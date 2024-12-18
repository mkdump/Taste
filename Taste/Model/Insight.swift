// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let aPIInsight = try APIInsight(json)

import Foundation

// MARK: - APIInsight
struct APIInsight: Codable {
    let id: Int
    let type: String
    let description: String
    let rubric: String?
    let headline: String
    let text: String
    let predictivePower: Double
    let team: String
    let gameID: Int?
    let gameTitle: String
    let compellingScore: Double
    let embedding: String?
    let createDate: String
    let updateDate: String
    let playerID: Int
    let sequence: Int
    let dataSourceID: Int?
    let dataSourceType: String?
    let gameWeek: Int
    let opponentTeam: String?
    let player1_Name: String?
    let opponentPlayer1_Name: String?
    let teamName: String?
    let homeTeamCode: String?
    let homeTeam: String?
    let awayTeamCode: String?
    let awayTeam: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case description = "description"
        case rubric = "rubric"
        case headline = "headline"
        case text = "text"
        case predictivePower = "predictive_power"
        case team = "team"
        case gameID = "game_id"
        case gameTitle = "game_title"
        case compellingScore = "compelling_score"
        case embedding = "embedding"
        case createDate = "create_date"
        case updateDate = "update_date"
        case playerID = "player_id"
        case sequence = "sequence"
        case dataSourceID = "data_source_id"
        case dataSourceType = "data_source_type"
        case gameWeek = "game_week"
        case opponentTeam = "opponent_team"
        case player1_Name = "player_1_name"
        case opponentPlayer1_Name = "opponent_player_1_name"
        case teamName = "team_name"
        case homeTeamCode = "home_team_code"
        case homeTeam = "home_team"
        case awayTeamCode = "away_team_code"
        case awayTeam = "away_team"
    }
}

// MARK: APIInsight convenience initializers and mutators

extension APIInsight {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(APIInsight.self, from: data)
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
        id: Int? = nil,
        type: String? = nil,
        description: String? = nil,
        rubric: String? = nil,
        headline: String? = nil,
        text: String? = nil,
        predictivePower: Double? = nil,
        team: String? = nil,
        gameID: Int? = nil,
        gameTitle: String? = nil,
        compellingScore: Double? = nil,
        embedding: String?? = nil,
        createDate: String? = nil,
        updateDate: String? = nil,
        playerID: Int? = nil,
        sequence: Int? = nil,
        dataSourceID: Int? = nil,
        dataSourceType: String? = nil,
        gameWeek: Int? = nil,
        opponentTeam: String? = nil,
        player1_Name: String? = nil,
        opponentPlayer1_Name: String? = nil,
        teamName: String? = nil,
        homeTeamCode: String? = nil,
        homeTeam: String? = nil,
        awayTeamCode: String? = nil,
        awayTeam: String? = nil
    ) -> APIInsight {
        return APIInsight(
            id: id ?? self.id,
            type: type ?? self.type,
            description: description ?? self.description,
            rubric: rubric ?? self.rubric,
            headline: headline ?? self.headline,
            text: text ?? self.text,
            predictivePower: predictivePower ?? self.predictivePower,
            team: team ?? self.team,
            gameID: gameID ?? self.gameID,
            gameTitle: gameTitle ?? self.gameTitle,
            compellingScore: compellingScore ?? self.compellingScore,
            embedding: embedding ?? self.embedding,
            createDate: createDate ?? self.createDate,
            updateDate: updateDate ?? self.updateDate,
            playerID: playerID ?? self.playerID,
            sequence: sequence ?? self.sequence,
            dataSourceID: dataSourceID ?? self.dataSourceID,
            dataSourceType: dataSourceType ?? self.dataSourceType,
            gameWeek: gameWeek ?? self.gameWeek,
            opponentTeam: opponentTeam ?? self.opponentTeam,
            player1_Name: player1_Name ?? self.player1_Name,
            opponentPlayer1_Name: opponentPlayer1_Name ?? self.opponentPlayer1_Name,
            teamName: teamName ?? self.teamName,
            homeTeamCode: homeTeamCode ?? self.homeTeamCode,
            homeTeam: homeTeam ?? self.homeTeam,
            awayTeamCode: awayTeamCode ?? self.awayTeamCode,
            awayTeam: awayTeam ?? self.awayTeam
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
            return true
    }

    public var hashValue: Int {
            return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            if !container.decodeNil() {
                    throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
            }
    }

    public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            try container.encodeNil()
    }
}
