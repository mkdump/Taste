//
//  TasteApp.swift
//  Taste
//
//  Created by Mitch Vitrano on 9/26/24.
//

import SwiftUI

@main
struct TasteApp: App {
    var body: some Scene {
        WindowGroup {
            //var items = [NarrativeInsight]()
            
            //let vm = MainInsightViewModel().getInitialInsights()
            InsightDiscoveryView().preferredColorScheme(.dark)
            //TikTokSwipingBehavior().preferredColorScheme(.dark)
            //MultiScrollView()
        }
    }
}
