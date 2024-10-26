//
//  ContentView.swift
//  Taste
//
//  Created by Mitch Vitrano on 9/26/24.
//

import SwiftUI
import ASCollectionView

struct ContentView: View {
    @ObservedObject var viewModel = FeedItemViewModel()
    
    
    var feedSections: ASTableViewSection<Int> {
        ASTableViewSection(id: 0, data: viewModel.items, contentBuilder: { item, _ in
            FeedItemCell(item: item)
        })
    }
    
    var body: some View {
        NavigationView {
            ASTableView(section: feedSections)
        }
    }
}

#Preview {
    ContentView()
}
