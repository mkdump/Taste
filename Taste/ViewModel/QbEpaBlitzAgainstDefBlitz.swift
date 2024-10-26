// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let qbEpaBlitzAgainstDefBlitz = try QbEpaBlitzAgainstDefBlitz(json)

import Foundation

// MARK: - QbEpaBlitzAgainstDefBlitz
public struct QbEpaBlitzAgainstDefBlitz: Codable {
    public let passerName: String
    public let offense: String
    public let blitzEpa: Double
    public let blitzEpaPercentile: Double
    public let defense: String
    public let blitzRate: Double
    public let blitzRatePercentile: Double
    public let predictivePower: Double

    public enum CodingKeys: String, CodingKey {
        case passerName = "passer_name"
        case offense = "offense"
        case blitzEpa = "blitz_epa"
        case blitzEpaPercentile = "blitz_epa_percentile"
        case defense = "defense"
        case blitzRate = "blitz_rate"
        case blitzRatePercentile = "blitz_rate_percentile"
        case predictivePower = "predictive_power"
    }

    public init(passerName: String, offense: String, blitzEpa: Double, blitzEpaPercentile: Double, defense: String, blitzRate: Double, blitzRatePercentile: Double, predictivePower: Double) {
        self.passerName = passerName
        self.offense = offense
        self.blitzEpa = blitzEpa
        self.blitzEpaPercentile = blitzEpaPercentile
        self.defense = defense
        self.blitzRate = blitzRate
        self.blitzRatePercentile = blitzRatePercentile
        self.predictivePower = predictivePower
    }
}

// MARK: QbEpaBlitzAgainstDefBlitz convenience initializers and mutators

public extension QbEpaBlitzAgainstDefBlitz {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(QbEpaBlitzAgainstDefBlitz.self, from: data)
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
        passerName: String? = nil,
        offense: String? = nil,
        blitzEpa: Double? = nil,
        blitzEpaPercentile: Double? = nil,
        defense: String? = nil,
        blitzRate: Double? = nil,
        blitzRatePercentile: Double? = nil,
        predictivePower: Double? = nil
    ) -> QbEpaBlitzAgainstDefBlitz {
        return QbEpaBlitzAgainstDefBlitz(
            passerName: passerName ?? self.passerName,
            offense: offense ?? self.offense,
            blitzEpa: blitzEpa ?? self.blitzEpa,
            blitzEpaPercentile: blitzEpaPercentile ?? self.blitzEpaPercentile,
            defense: defense ?? self.defense,
            blitzRate: blitzRate ?? self.blitzRate,
            blitzRatePercentile: blitzRatePercentile ?? self.blitzRatePercentile,
            predictivePower: predictivePower ?? self.predictivePower
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
