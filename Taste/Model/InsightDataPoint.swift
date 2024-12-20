// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let insightDataPoint = try InsightDataPoint(json)

import Foundation

// MARK: - InsightDataPoint
struct InsightDataPoint: Codable {
    let player: String
    let playerTeam: String
    let defenseTeam: String
    let xValue: Double
    let yValue: Double
    let volume: String
    let xPercentile: Double
    let yPercentile: Double
    let xCode: String
    let yCode: String
    let xText: String
    let yText: String
    let xDefinition: String
    let yDefinition: String
    let xRank: String
    let defenseRank: String
    let totalPlayers: String
    let totalTeams: String
    let isHighlighted: Bool

    enum CodingKeys: String, CodingKey {
        case player = "player"
        case playerTeam = "player_team"
        case defenseTeam = "defense_team"
        case xValue = "xValue"
        case yValue = "yValue"
        case volume = "volume"
        case xPercentile = "xPercentile"
        case yPercentile = "yPercentile"
        case xCode = "xCode"
        case yCode = "yCode"
        case xText = "xText"
        case yText = "yText"
        case xDefinition = "xDefinition"
        case yDefinition = "yDefinition"
        case xRank = "x_rank"
        case defenseRank = "defense_rank"
        case totalPlayers = "total_players"
        case totalTeams = "total_teams"
        case isHighlighted = "is_highlighted"
    }
}

// MARK: InsightDataPoint convenience initializers and mutators

extension InsightDataPoint {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InsightDataPoint.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        player: String? = nil,
        playerTeam: String? = nil,
        defenseTeam: String? = nil,
        xValue: Double? = nil,
        yValue: Double? = nil,
        volume: String? = nil,
        xPercentile: Double? = nil,
        yPercentile: Double? = nil,
        xCode: String? = nil,
        yCode: String? = nil,
        xText: String? = nil,
        yText: String? = nil,
        xDefinition: String? = nil,
        yDefinition: String? = nil,
        xRank: String? = nil,
        defenseRank: String? = nil,
        totalPlayers: String? = nil,
        totalTeams: String? = nil,
        isHighlighted: Bool? = nil
    ) -> InsightDataPoint {
        return InsightDataPoint(
            player: player ?? self.player,
            playerTeam: playerTeam ?? self.playerTeam,
            defenseTeam: defenseTeam ?? self.defenseTeam,
            xValue: xValue ?? self.xValue,
            yValue: yValue ?? self.yValue,
            volume: volume ?? self.volume,
            xPercentile: xPercentile ?? self.xPercentile,
            yPercentile: yPercentile ?? self.yPercentile,
            xCode: xCode ?? self.xCode,
            yCode: yCode ?? self.yCode,
            xText: xText ?? self.xText,
            yText: yText ?? self.yText,
            xDefinition: xDefinition ?? self.xDefinition,
            yDefinition: yDefinition ?? self.yDefinition,
            xRank: xRank ?? self.xRank,
            defenseRank: defenseRank ?? self.defenseRank,
            totalPlayers: totalPlayers ?? self.totalPlayers,
            totalTeams: totalTeams ?? self.totalTeams,
            isHighlighted: isHighlighted ?? self.isHighlighted
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
