//
//  FeedItemViewModel.swift
//  Taste
//
//  Created by Mitch Vitrano on 9/26/24.
//

import Foundation

class FeedItemViewModel: ObservableObject {
    @Published var items = [FeedItem]()
    
    init() {
        let item1 = FeedItem(id: 0, gameTitle: "Browns v. Chiefs", game: Game(homeTeam: NFLTeam.Cleveland, awayTeam: NFLTeam.KansasCity), narrativeTitle: "Watson Continues to Struggle", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Underperform", description: "Will underpoerform in the pocket")], views: 134423, likes: 33323, saves: 3233)
        
        let item2 = FeedItem(id: 1, gameTitle: "49ers v. Seahawks", game: Game(homeTeam: .SanFrancisco, awayTeam: .Seattle), narrativeTitle: "Niners are looking Puuurrrdy", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Overperform", description: "Brock is gonna throw the rock for a bunch of tuddies!")], views: 134423, likes: 33323, saves: 3233)
        
        let item3 = FeedItem(id: 2, gameTitle: "Browns v. Chiefs", game: Game(homeTeam: NFLTeam.Cleveland, awayTeam: NFLTeam.KansasCity), narrativeTitle: "Watson Continues to Struggle", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Underperform", description: "Will underpoerform in the pocket")], views: 134423, likes: 33323, saves: 3233)
        
        let item4 = FeedItem(id: 3, gameTitle: "49ers v. Seahawks", game: Game(homeTeam: .SanFrancisco, awayTeam: .Seattle), narrativeTitle: "Niners are looking Puuurrrdy", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Overperform", description: "Brock is gonna throw the rock for a bunch of tuddies!")], views: 134423, likes: 33323, saves: 3233)
        
        let item5 = FeedItem(id: 4, gameTitle: "Browns v. Chiefs", game: Game(homeTeam: NFLTeam.Cleveland, awayTeam: NFLTeam.KansasCity), narrativeTitle: "Watson Continues to Struggle", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Underperform", description: "Will underpoerform in the pocket")], views: 134423, likes: 33323, saves: 3233)
        
        let item6 = FeedItem(id: 5, gameTitle: "49ers v. Seahawks", game: Game(homeTeam: .SanFrancisco, awayTeam: .Seattle), narrativeTitle: "Niners are looking Puuurrrdy", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Overperform", description: "Brock is gonna throw the rock for a bunch of tuddies!")], views: 134423, likes: 33323, saves: 3233)
        
        let item7 = FeedItem(id: 6, gameTitle: "Browns v. Chiefs", game: Game(homeTeam: NFLTeam.Cleveland, awayTeam: NFLTeam.KansasCity), narrativeTitle: "Watson Continues to Struggle", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Underperform", description: "Will underpoerform in the pocket")], views: 134423, likes: 33323, saves: 3233)
        
        let item8 = FeedItem(id: 7, gameTitle: "49ers v. Seahawks", game: Game(homeTeam: .SanFrancisco, awayTeam: .Seattle), narrativeTitle: "Niners are looking Puuurrrdy", narrativePoints: [FeedItemPoint(id: 0, icon: "bullet", title: "Overperform", description: "Brock is gonna throw the rock for a bunch of tuddies!")], views: 134423, likes: 33323, saves: 3233)
        
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item4)
        items.append(item5)
        items.append(item6)
        items.append(item7)
        items.append(item8)
    }
}
