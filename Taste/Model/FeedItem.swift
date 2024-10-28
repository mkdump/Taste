//
//  FeedItem.swift
//  Taste
//
//  Created by Mitch Vitrano on 9/26/24.
//

import Foundation
import SwiftUI

struct FeedItem : Identifiable {
    let id: Int
    let gameTitle: String
    let game: Game
    let narrativeTitle: String
    let narrativePoints: [FeedItemPoint]
    
    let views: Int
    let likes: Int
    let saves: Int
}

struct FeedItemPoint : Identifiable {
    var id: Int
    let icon: String
    let title: String
    let description: String
}





