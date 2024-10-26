//
//  TikTockSwipe.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/19/24.
//

import SwiftUI

struct TikTokSwipingBehavior: View {
    @ObservedObject var viewModel = InsightViewModel()
    
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.items) { item in
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
    }
}

#Preview {
    TikTokSwipingBehavior().preferredColorScheme(.dark)
}
