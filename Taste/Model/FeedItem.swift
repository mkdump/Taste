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

struct TargetPercentage: Identifiable {
    var code: String
    var value: Float
    var text: String
    var id = UUID()
}

struct QbEPA : Identifiable {
    var code: String
    var value: Float
    var text: String
    var id = UUID()
}

struct BlizRate: Identifiable {
    var code: String
    var value: Float
    var text: String
    var id = UUID()
}

struct NarrativeInsight : Identifiable {
    var id: Int
    let insightType: InsightType
    let insightDesc: String
    let insightRubric: String
    let headline: String
    let text: String
    let predictivePower: Double
    let teamId: Int
    let players: [Int]
    let gameTitle: String
    let game: Game
    let data: [InsightDataPoint]
    let dataPoint: InsightDataPoint
    let compellingScore: Float
    let embedding: String
    let bets: Array<String>
}

enum InsightType {
    case QbEpaBlitz
    case WrTargetRateBlitz
}

struct InsightDataPoint : Identifiable{
    let id: Int
    let xValue: Float
    let xCode: String
    let xText: String
    let xPercentile: Float
    let xDefinition: String
    
    let yValue: Float
    let yCode: String
    let yText: String
    let yPercentile: Float
    let yDefinition: String
    
    let color: Color
}

struct FeedItemPoint : Identifiable {
    var id: Int
    let icon: String
    let title: String
    let description: String
}

struct Game {
    var homeTeam: NFLTeam
    var homeTeamName: String?
    var awayTeam: NFLTeam
    var awayTeamName: String?
}

enum NFLTeam {
    case Arizona
    case Atlanta
    case Baltimore
    case Buffalo
    case Carolina
    case Chicago
    case Cincinnati
    case Cleveland
    case Dallas
    case Denver
    case Detroit
    case GreenBay
    case Houston
    case Indianapolis
    case Jacksonville
    case KansasCity
    case LosAngelesChargers
    case LosAngelesRams
    case Miami
    case Minnesota
    case NewOrleans
    case NewYorkGiants
    case NewYorkJets
    case LasVegas
    case Philadelphia
    case Pittsburgh
    case SanFrancisco
    case Seattle
    case TampaBay
    case Tennessee
    case Washington
}


