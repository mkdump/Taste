//
//  NarrativeInsight.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/27/24.
//

import Foundation

struct NarrativeInsight : Identifiable, Hashable {
    static func == (lhs: NarrativeInsight, rhs: NarrativeInsight) -> Bool {
        return true
    }
    
    var id: Int
    var position: Int
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
    let data: [NarrativeDataPoint]
    let compellingScore: Float
    let embedding: String
    let bets: Array<String>
}
