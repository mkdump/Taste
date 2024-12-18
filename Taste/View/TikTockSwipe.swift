//
//  TikTockSwipe.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/19/24.
//

import SwiftUI

struct TikTokSwipingBehavior: View {
    @ObservedObject var viewModel = MainInsightViewModel()
    
    @State private var insights = [NarrativeInsight]()
    @State private var selectedInsight: NarrativeInsight? = nil
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.getInitialInsights()) { item in
                    ZStack {
                        Rectangle()
                            .fill(Color.black.opacity(0.9))
                            .frame(
                                width: UIScreen.main.bounds.width,
                                height: UIScreen.main.bounds.height
                                )
                           
                        InsightViewItem(item: item)
                    }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .scrollPosition(id: $selectedInsight)
        .onChange(of: selectedInsight)
        { _, new in
            let lastPosition = insights.last!.position
            let firstPosition = insights.first!.position
            
            if new!.position == lastPosition
            {
                insertNewPageEnd(lastPosition)
            }
            else if new!.position == firstPosition
            {
                insertNewPageStart(firstPosition)
            }
        }
    }
    
    func insertNewPageEnd(_ position: Int)
    {
        let tab = viewModel.getNextInsight()
        
        insights.append(tab)
    }
    
    func insertNewPageStart(_ position: Int)
    {
        let tab = viewModel.getNextInsight()

        insights.insert(tab, at: 0)
    }
}
