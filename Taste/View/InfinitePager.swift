//
//  InfinitePager.swift
//  Taste
//
//  Created by Mitch Vitrano on 12/18/24.
//

import SwiftUI

public struct InfinitePager<Content: View>: View {
  @State private var currentHorizontalPage: Int
  @State private var currentVerticalPage: Int
  @State private var offset: CGSize = .zero
  @State private var dragDirection: PageViewDirection = .none
  @State private var size: CGSize = .zero
  @GestureState private var isDragging = false
  @Environment(\.scenePhase) var scenePhase
  @State private var cancelByDrag = false
  private let edgeBouncyAnimation: Animation = .smooth

  /// 横向总视图数量，nil 为无限
  let totalHorizontalPage: Int?
  /// 纵向总视图数量，nil 为无限
  let totalVerticalPage: Int?
  /// 横向翻页位移阈值，松开手指后，预测距离超过容器宽度的百分比，超过即翻页
  let horizontalThresholdRatio: CGFloat
  /// 纵向翻页位移阈值，松开手指后，预测距离超过容器高度的百分比，超过即翻页
  let verticalThresholdRatio: CGFloat
  /// 一个闭包，用于生成对应单元格的页面，参数为当前单元格的横竖位置
  let getPage: (Int, Int) -> Content
  /// 启用后，将生成更多的站位视图（ 为开启生成 4 个，开启后创建 8 个）。可以改善因滑动速度过快或弹性动画回弹效果过大产生的单元格空隙
  let enableClipped: Bool
  /// 翻页动画
  let animation: Animation
  /// 是否启用视图可见感知
  let enablePageVisibility: Bool

  public init(
    /// 初始单元格横向位置
    initialHorizontalPage: Int = 0,
    /// 初始单元格纵向位置
    initialVerticalPage: Int = 0,
    totalHorizontalPage: Int? = nil,
    totalVerticalPage: Int? = nil,
    horizontalThresholdRatio: CGFloat = 0.33,
    verticalThresholdRatio: CGFloat = 0.25,
    animation: Animation = .easeOut(duration: 0.22),
    enableClipped: Bool = true,
    enablePageVisibility: Bool = false,
    @ViewBuilder getPage: @escaping (Int, Int) -> Content
  ) {
    _currentHorizontalPage = State(initialValue: initialHorizontalPage)
    _currentVerticalPage = State(initialValue: initialVerticalPage)
    self.totalHorizontalPage = totalHorizontalPage
    self.totalVerticalPage = totalVerticalPage
    self.horizontalThresholdRatio = horizontalThresholdRatio
    self.verticalThresholdRatio = verticalThresholdRatio
    self.getPage = getPage
    self.enableClipped = enableClipped
    self.animation = animation
    self.enablePageVisibility = enablePageVisibility
  }

  public var body: some View {
    CurrentPageView(
      currentHorizontalPage: currentHorizontalPage,
      currentVerticalPage: currentVerticalPage,
      totalHorizontalPage: totalHorizontalPage,
      totalVerticalPage: totalVerticalPage,
      size: size,
      getPage: getPage
    )
    .disabled(isDragging)
    .geometryGroup()
    .offset(x: offset.width, y: offset.height)
    .simultaneousGesture(
      DragGesture()
        .updating($isDragging) { _, isDragging, _ in
          if !isDragging {
            isDragging = true
          }
        }
        .onChanged { value in
          if dragDirection == .none {
            let temp = abs(value.translation.width) > abs(value.translation.height) ? PageViewDirection.horizontal : .vertical
            if totalHorizontalPage != 0, temp == .horizontal {
              dragDirection = .horizontal
            }
            if totalVerticalPage != 0, temp == .vertical {
              dragDirection = .vertical
            }
          }

          var newOffset: CGSize = .zero
          if dragDirection == .horizontal {
            let limitedX = boundedDragOffset(
              value.translation.width,
              pageSize: size.width,
              currentPage: currentHorizontalPage,
              totalPages: totalHorizontalPage
            )
            newOffset = CGSize(width: limitedX, height: 0)
          }

          if dragDirection == .vertical {
            let limitedY = boundedDragOffset(
              value.translation.height,
              pageSize: size.height,
              currentPage: currentVerticalPage,
              totalPages: totalVerticalPage
            )
            newOffset = CGSize(width: 0, height: limitedY)
          }

          offset = newOffset
        }
        .onEnded { value in
          let pageSize = dragDirection == .horizontal ? size.width : size.height
          let currentPage = dragDirection == .horizontal ? currentHorizontalPage : currentVerticalPage
          let totalPages = dragDirection == .horizontal ? totalHorizontalPage : totalVerticalPage
          let thresholdRatio = dragDirection == .horizontal ? horizontalThresholdRatio : verticalThresholdRatio

          let translation = dragDirection == .horizontal ? value.predictedEndTranslation.width : value.predictedEndTranslation.height
          let boundedTranslation = boundedDragOffset(translation, pageSize: pageSize, currentPage: currentPage, totalPages: totalPages)

          let direction = -Int(translation / abs(translation))

          let isAtBoundary = isAtBoundary(direction: direction)
          if abs(boundedTranslation) > pageSize * thresholdRatio, !isAtBoundary {
            let newOffset = CGSize(
              width: dragDirection == .horizontal ? CGFloat(-direction) * pageSize : 0,
              height: dragDirection == .vertical ? CGFloat(-direction) * pageSize : 0
            )

            withAnimation(animation) {
              offset = newOffset
            } completion: {
              if dragDirection == .horizontal {
                if let total = totalHorizontalPage {
                  // 有限页面的情况
                  currentHorizontalPage = (currentHorizontalPage + (direction == 1 ? 1 : -1) + total) % total
                } else {
                  // 无限滚动的情况
                  currentHorizontalPage += direction == 1 ? 1 : -1
                }
              }

              if dragDirection == .vertical {
                if let total = totalVerticalPage {
                  // 有限页面的情况
                  currentVerticalPage = (currentVerticalPage + (direction == 1 ? 1 : -1) + total) % total
                } else {
                  // 无限滚动的情况
                  currentVerticalPage += direction == 1 ? 1 : -1
                }
              }
              dragDirection = .none
            }
          } else {
            withAnimation(edgeBouncyAnimation) {
              offset = .zero
              dragDirection = .none
            }
          }
          cancelByDrag = true
        }
    )
    .onChange(of: isDragging) {
      // 处理系统对拖动手势的打断
      if !isDragging {
        if !cancelByDrag {
          withAnimation(edgeBouncyAnimation) {
            offset = .zero
          }
        } else {
          cancelByDrag = false
        }
      }
    }
    .onChange(of: currentVerticalPage) {
      offset = .zero
    }
    .onChange(of: currentHorizontalPage) {
      offset = .zero
    }
    .environment(\.infinite4PagerIsDragging, isDragging)
    .environment(\.pagerCurrentPage, CurrentPage(horizontal: currentHorizontalPage, vertical: currentVerticalPage))
    .transformEnvironment(\.mainPageOffsetInfo) { value in
      if enablePageVisibility {
        value = MainPageOffsetInfo(mainPagePercent: mainPagePercent(), direction: dragDirection)
      }
    }
    .clipped(disable: !enableClipped)
    .background(
      GeometryReader { proxy in
        let size = proxy.size
        Color.clear
          .task(id: size) { self.size = size }
      }
    )
  }

  // 根据 container size 和 offset，计算主视图的可见参考值
  // 0 = 完全可见，横向时, -1 左侧完全移出，+1 右侧完全移出
  // 纵向时， -1 向上完全移出，+1 向下完全移出
  private func mainPagePercent() -> Double {
    switch dragDirection {
    case .horizontal:
      offset.width / size.width
    case .vertical:
      offset.height / size.height
    case .none:
      0
    }
  }

  // 判断是否为边界视图
  private func isAtBoundary(direction: Int) -> Bool {
    switch dragDirection {
    case .horizontal:
      if let total = totalHorizontalPage {
        // 有限水平页面的情况
        return (currentHorizontalPage == 0 && direction < 0) || (currentHorizontalPage == total - 1 && direction > 0)

      } else {
        // 无限水平滚动的情况
        return false
      }
    case .vertical:
      if let total = totalVerticalPage {
        // 有限垂直页面的情况
        return (currentVerticalPage == 0 && direction < 0) ||
          (currentVerticalPage == total - 1 && direction > 0)
      } else {
        // 无限垂直滚动的情况
        return false
      }
    case .none:
      return false
    }
  }

  private func boundedDragOffset(
    _ offset: CGFloat,
    pageSize: CGFloat,
    currentPage: Int,
    totalPages: Int?
  ) -> CGFloat {
    let maxThreshold = pageSize / 2

    if let total = totalPages {
      if (currentPage == 0 && offset > 0) || (currentPage == total - 1 && offset < 0) {
        let absOffset = abs(offset)
        let progress = min(absOffset / maxThreshold, 1.0)

        // 使用更线性的阻尼函数
        let dampeningFactor = 1 - progress * 0.5

        let dampendOffset = absOffset * dampeningFactor
        return offset > 0 ? dampendOffset : -dampendOffset
      }
    }
    return offset
  }
}

enum PageViewDirection {
  case horizontal, vertical, none
}

struct CurrentPageView<Content: View>: View {
  let currentHorizontalPage: Int
  let currentVerticalPage: Int
  let totalHorizontalPage: Int?
  let totalVerticalPage: Int?
  let size: CGSize
  let getPage: (Int, Int) -> Content

  @Environment(\.mainPageOffsetInfo) var info

  init(
    currentHorizontalPage: Int,
    currentVerticalPage: Int,
    totalHorizontalPage: Int?,
    totalVerticalPage: Int?,
    size: CGSize,
    getPage: @escaping (Int, Int) -> Content
  ) {
    self.currentHorizontalPage = currentHorizontalPage
    self.currentVerticalPage = currentVerticalPage
    self.totalHorizontalPage = totalHorizontalPage
    self.totalVerticalPage = totalVerticalPage
    self.size = size
    self.getPage = getPage
  }

  var body: some View {
    Color.clear
      .overlay(alignment: .center) {
        Grid(alignment: .center, horizontalSpacing: 0, verticalSpacing: 0) {
          GridRow {
            Color.clear
              .frame(size: size)
            // top
            getAdjacentPage(direction: .vertical, offset: -1)
              .frame(size: size)
              .environment(\.pageType, .top)
            Color.clear
              .frame(size: size)
          }
          GridRow {
            // leading
            getAdjacentPage(direction: .horizontal, offset: -1)
              .frame(size: size)
              .environment(\.pageType, .leading)
            // current
            getPage(currentHorizontalPage, currentVerticalPage)
              .frame(size: size)
              .environment(\.pageType, .current)
            // trailing
            getAdjacentPage(direction: .horizontal, offset: 1)
              .frame(size: size)
              .environment(\.pageType, .trailing)
          }
          GridRow {
            Color.clear
              .frame(size: size)
            // bottom
            getAdjacentPage(direction: .vertical, offset: 1)
              .frame(size: size)
              .environment(\.pageType, .bottom)
            Color.clear
              .frame(size: size)
          }
        }
      }
      .contentShape(Rectangle())
      .id("\(currentHorizontalPage),\(currentVerticalPage)")
  }

  private func getAdjacentPage(direction: PageViewDirection, offset: Int) -> some View {
    let nextPage: Int?
    let currentPage: Int
    let totalPages: Int?

    switch direction {
    case .horizontal:
      currentPage = currentHorizontalPage
      totalPages = totalHorizontalPage
      nextPage = getNextPage(currentPage, total: totalPages, direction: offset)
    case .vertical:
      currentPage = currentVerticalPage
      totalPages = totalVerticalPage
      nextPage = getNextPage(currentPage, total: totalPages, direction: offset)
    case .none:
      fatalError()
    }

    return Group {
      if let nextPage = nextPage {
        Color.clear
          .overlay(
            direction == .horizontal
              ? getPage(nextPage, currentVerticalPage)
              : getPage(currentHorizontalPage, nextPage)
          )
      } else {
        Color.clear
      }
    }
  }

  private func getNextPage(_ current: Int, total: Int?, direction: Int) -> Int? {
    if let total = total {
      let next = current + direction
      return (0 ..< total).contains(next) ? next : nil
    }
    return current + direction
  }
}

enum PageType {
  case current, leading, trailing, top, bottom
}
