//
//  NarrativeInsight.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/27/24.
//

import Foundation

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
