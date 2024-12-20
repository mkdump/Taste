//
//  TwoWayPager.swift
//  Taste
//
//  Created by Mitch Vitrano on 12/17/24.
//

import SwiftUI
import Combine

struct InsightDiscoveryView: View {
    @State private var viewModel = MainInsightViewModel()
    
    var body: some View {
        InfinitePager(
            initialHorizontalPage: 0,
            initialVerticalPage: 0,
            totalHorizontalPage: nil,
            totalVerticalPage: nil,
            enableClipped: false,
            enablePageVisibility: true,
            getPage: { h, v in
                
                DynamicPage(viewModel: viewModel, h: h, v: v)
            }
        )
        .ignoresSafeArea()
    }
}

struct DynamicPage: View {
    let viewModel: MainInsightViewModel
    let h: Int
    let v: Int
    
    let images = ["arizona-cardinals-logo", "baltimore-ravens-logo", "indianapolis-colts-logo", "los-angeles-chargers-logo", "minnesota-vikings-logo"]
    @Environment(\.pagerCurrentPage) var mainPage
    @State var percent: Double = 0
    @State var isCurrent = false
    @State var dataPoints: [NarrativeDataPoint]  = []
    @State var currentInsightItem: NarrativeInsight? = nil
    
    var body: some View {
        VStack {
            
            
            Color.clear
                .overlay(
                        ZStack {
                            Rectangle()
                                .fill(Color.black.opacity(0.3))
                                .frame(
                                    width: UIScreen.main.bounds.width,
                                    height: UIScreen.main.bounds.height
                                    )
                               
                            if case .LOADING = viewModel.currentState {
                                            VStack(alignment: .center) {
                                                Spacer()
                                                Text("Swipe to begin...")
                                                    .font(.headline.bold())
                                                    .multilineTextAlignment(.center)
                                                Spacer()
                                            }
                                            .padding()
                                        } else if case .SUCCESS(let items) = viewModel.currentState {
                                            let index = abs((h + v) % (items.count - 1))
                                            
                                            //print("loaded (" + h + "," + v + ")")
                                            let currentInsightItem = items[index]
                                            InsightViewItem(item: currentInsightItem, dataPoints: dataPoints)
                                                .overlay(
                                                      VStack {
                                                        Text("\(h),\(v)")
                                                      }
                                                        .font(.caption)
                                                      .foregroundStyle(.white)
                                                      .padding()
                                                      .background(
                                                        RoundedRectangle(cornerRadius: 15)
                                                          .foregroundColor(.black)
                                                      )
                                                )
                                            
                                        } else if case .FAILURE(let error) = viewModel.currentState {
                                            VStack(alignment: .center) {
                                                Spacer()
                                                Text(error)
                                                    .font(.headline.bold())
                                                    .multilineTextAlignment(.center)
                                                Spacer()
                                            }
                                            .padding()
                                        }
                                
                        }
                
                )
                .onPageVisible { percent in
                    if let percent {
                        self.percent = percent
                    }
                }
                .task(id: mainPage) {
                    if let mainPage {
                        if mainPage.horizontal == h, mainPage.vertical == v {
                            isCurrent = true
                            
                        }
                    }
                }
                .clipped()
        }
    }
}

struct PageView: View {
  let h: Int
  let v: Int
    let images = ["arizona-cardinals-logo", "baltimore-ravens-logo", "indianapolis-colts-logo", "los-angeles-chargers-logo", "minnesota-vikings-logo"]
  @Environment(\.pagerCurrentPage) var mainPage
  @State var percent: Double = 0
  @State var isCurrent = false
  var body: some View {
    VStack {
      let index = abs((h + v) % (images.count - 1))
      Color.clear
        .overlay(
          Image(images[index])
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
              VStack {
                Text("\(h),\(v)")
                Text("visibility \(percent)")
                Text("isCurrent:\(isCurrent)")
              }
              .font(.largeTitle)
              .foregroundStyle(.white)
              .padding()
              .background(
                RoundedRectangle(cornerRadius: 15)
                  .foregroundColor(.black)
              )
            )
        )
        .onPageVisible { percent in
          if let percent {
            self.percent = percent
          }
        }
        .task(id: mainPage) {
          if let mainPage {
            if mainPage.horizontal == h, mainPage.vertical == v {
              isCurrent = true
            }
          }
        }
        .clipped()
    }
  }
}
