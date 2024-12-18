//
//  Game.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/27/24.
//

import Foundation

struct Game : Hashable {
    var homeTeam: NFLTeam
    var homeTeamName: String?
    var awayTeam: NFLTeam
    var awayTeamName: String?
}
