//
//  MultiScrollView.swift
//  Taste
//
//  Created by Mitch Vitrano on 11/1/24.
//

import SwiftUI

struct Page: Identifiable, Hashable
{
    let id = UUID()
    let position: Int
    let color: Color
}

struct MultiScrollView: View
{
    @State private var Pages: [Page] =
    [
        Page(position: -1, color: .red),
        Page(position: 0, color: .green),
        Page(position: 1, color: .blue),
    ]
    
    @State private var HPages: [Page] =
    [
        Page(position: -1, color: .yellow),
        Page(position: 0, color: .purple),
        Page(position: 1, color: .brown),
    ]
    
    @State private var selectedPage: Page?
    @State private var selectedHPage: Page?
        
    var body: some View
    {
        ScrollView(.vertical)
        {
            LazyVStack(spacing: 0)
            {
                ForEach(Pages, id: \.self)
                { page in
    
                    ScrollView(.horizontal)
                    {
                        LazyHStack(){
                            
                            ForEach(HPages, id: \.self)
                            { hPage in
                                Rectangle()
                                    .fill(hPage.color.gradient)
                                    .containerRelativeFrame([.horizontal, .vertical])
                                    .overlay { Text("position \(hPage.position)") }
                            }
                            
                        }
                        .scrollTargetLayout()
                    }
                    .scrollTargetBehavior(.paging)
                    .scrollPosition(id: $selectedHPage)
                    .onAppear() { selectedHPage = HPages[1] }
                    .onChange(of: selectedHPage)
                    { _, new in
                        let lastPosition = HPages.last!.position
                        let firstPosition = HPages.first!.position
                        
                        if new!.position == lastPosition
                        {
                            insertNewHPageEnd(lastPosition)
                        }
                        else if new!.position == firstPosition
                        {
                            insertNewHPageStart(firstPosition)
                        }
                    }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .scrollPosition(id: $selectedPage)
        .onAppear() { selectedPage = Pages[1] }
        .onChange(of: selectedPage)
        { _, new in
            let lastPosition = Pages.last!.position
            let firstPosition = Pages.first!.position
            
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
        let tab = Page(position: position + 1, color: Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1)))
        
        Pages.append(tab)
    }
    
    func insertNewPageStart(_ position: Int)
    {
        let tab = Page(position: position - 1, color: Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1)))

        Pages.insert(tab, at: 0)
    }
    
    func insertNewHPageEnd(_ position: Int)
    {
        let tab = Page(position: position + 1, color: Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1)))
        
        Pages.append(tab)
    }
    
    func insertNewHPageStart(_ position: Int)
    {
        let tab = Page(position: position - 1, color: Color(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1)))

        Pages.insert(tab, at: 0)
    }
}
