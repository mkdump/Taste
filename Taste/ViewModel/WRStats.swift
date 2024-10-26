// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let wRStats = try WRStats(json)

import Foundation

// MARK: - WRStats
public struct WRStats: Codable {
    public let player: String
    public let routes: Int
    public let offense: String
    public let rosterPos: String
    public let totYards: Int
    public let tprr: Double
    public let adot: Double
    public let deepGrade: Double
    public let separation: Double
    public let catchpointYacGrade: Double
    public let yac: Double
    public let manPct: Double
    public let manRoutes: Int
    public let manYards: Int
    public let zoneYards: Int
    public let zonePct: Double
    public let zoneRoutes: Int
    public let zoneSeparation: Double
    public let manCatchpointYacGrade: Double
    public let manSeparation: Double
    public let redZoneSep: Double
    public let redZoneGrade: Int
    public let redZoneTprr: Int
    public let redZoneRoutes: Int
    public let zoneYprr: Double
    public let zoneTprr: Double
    public let manYprr: Double
    public let manTprr: Double
    public let tprrDif: Double
    public let slotSnaps: Int
    public let slotPct: Double
    public let nonSlotSnaps: Int
    public let singleCovRate: Double
    public let singleCovSep: Double
    public let singleCovGrade: Double
    public let slotYards: Int
    public let slotSeparation: Double
    public let slotYprr: Double
    public let slotTprr: Double
    public let slotExplosiveRec: Double
    public let slotGrade: Double
    public let blitzTargetShare: Double
    public let blitzSepGrade: Double
    public let blitzGrade: Double
    public let yprr: Double
    public let noHelp: Double
    public let help: Double
    public let manNoHelpSep: Double

    public enum CodingKeys: String, CodingKey {
        case player = "player"
        case routes = "routes"
        case offense = "offense"
        case rosterPos = "roster_pos"
        case totYards = "tot_yards"
        case tprr = "tprr"
        case adot = "adot"
        case deepGrade = "deep_grade"
        case separation = "separation"
        case catchpointYacGrade = "catchpoint_yac_grade"
        case yac = "yac"
        case manPct = "man_pct"
        case manRoutes = "man_routes"
        case manYards = "man_yards"
        case zoneYards = "zone_yards"
        case zonePct = "zone_pct"
        case zoneRoutes = "zone_routes"
        case zoneSeparation = "zone_separation"
        case manCatchpointYacGrade = "man_catchpoint_yac_grade"
        case manSeparation = "man_separation"
        case redZoneSep = "red_zone_sep"
        case redZoneGrade = "red_zone_grade"
        case redZoneTprr = "red_zone_tprr"
        case redZoneRoutes = "red_zone_routes"
        case zoneYprr = "zone_yprr"
        case zoneTprr = "zone_tprr"
        case manYprr = "man_yprr"
        case manTprr = "man_tprr"
        case tprrDif = "tprr_dif"
        case slotSnaps = "slot_snaps"
        case slotPct = "slot_pct"
        case nonSlotSnaps = "non_slot_snaps"
        case singleCovRate = "single_cov_rate"
        case singleCovSep = "single_cov_sep"
        case singleCovGrade = "single_cov_grade"
        case slotYards = "slot_yards"
        case slotSeparation = "slot_separation"
        case slotYprr = "slot_yprr"
        case slotTprr = "slot_tprr"
        case slotExplosiveRec = "slot_explosive_rec"
        case slotGrade = "slot_grade"
        case blitzTargetShare = "blitz_target_share"
        case blitzSepGrade = "blitz_sep_grade"
        case blitzGrade = "blitz_grade"
        case yprr = "yprr"
        case noHelp = "no_help"
        case help = "help"
        case manNoHelpSep = "man_no_help_sep"
    }

    public init(player: String, routes: Int, offense: String, rosterPos: String, totYards: Int, tprr: Double, adot: Double, deepGrade: Double, separation: Double, catchpointYacGrade: Double, yac: Double, manPct: Double, manRoutes: Int, manYards: Int, zoneYards: Int, zonePct: Double, zoneRoutes: Int, zoneSeparation: Double, manCatchpointYacGrade: Double, manSeparation: Double, redZoneSep: Double, redZoneGrade: Int, redZoneTprr: Int, redZoneRoutes: Int, zoneYprr: Double, zoneTprr: Double, manYprr: Double, manTprr: Double, tprrDif: Double, slotSnaps: Int, slotPct: Double, nonSlotSnaps: Int, singleCovRate: Double, singleCovSep: Double, singleCovGrade: Double, slotYards: Int, slotSeparation: Double, slotYprr: Double, slotTprr: Double, slotExplosiveRec: Double, slotGrade: Double, blitzTargetShare: Double, blitzSepGrade: Double, blitzGrade: Double, yprr: Double, noHelp: Double, help: Double, manNoHelpSep: Double) {
        self.player = player
        self.routes = routes
        self.offense = offense
        self.rosterPos = rosterPos
        self.totYards = totYards
        self.tprr = tprr
        self.adot = adot
        self.deepGrade = deepGrade
        self.separation = separation
        self.catchpointYacGrade = catchpointYacGrade
        self.yac = yac
        self.manPct = manPct
        self.manRoutes = manRoutes
        self.manYards = manYards
        self.zoneYards = zoneYards
        self.zonePct = zonePct
        self.zoneRoutes = zoneRoutes
        self.zoneSeparation = zoneSeparation
        self.manCatchpointYacGrade = manCatchpointYacGrade
        self.manSeparation = manSeparation
        self.redZoneSep = redZoneSep
        self.redZoneGrade = redZoneGrade
        self.redZoneTprr = redZoneTprr
        self.redZoneRoutes = redZoneRoutes
        self.zoneYprr = zoneYprr
        self.zoneTprr = zoneTprr
        self.manYprr = manYprr
        self.manTprr = manTprr
        self.tprrDif = tprrDif
        self.slotSnaps = slotSnaps
        self.slotPct = slotPct
        self.nonSlotSnaps = nonSlotSnaps
        self.singleCovRate = singleCovRate
        self.singleCovSep = singleCovSep
        self.singleCovGrade = singleCovGrade
        self.slotYards = slotYards
        self.slotSeparation = slotSeparation
        self.slotYprr = slotYprr
        self.slotTprr = slotTprr
        self.slotExplosiveRec = slotExplosiveRec
        self.slotGrade = slotGrade
        self.blitzTargetShare = blitzTargetShare
        self.blitzSepGrade = blitzSepGrade
        self.blitzGrade = blitzGrade
        self.yprr = yprr
        self.noHelp = noHelp
        self.help = help
        self.manNoHelpSep = manNoHelpSep
    }
}

// MARK: WRStats convenience initializers and mutators

public extension WRStats {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(WRStats.self, from: data)
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
        routes: Int? = nil,
        offense: String? = nil,
        rosterPos: String? = nil,
        totYards: Int? = nil,
        tprr: Double? = nil,
        adot: Double? = nil,
        deepGrade: Double? = nil,
        separation: Double? = nil,
        catchpointYacGrade: Double? = nil,
        yac: Double? = nil,
        manPct: Double? = nil,
        manRoutes: Int? = nil,
        manYards: Int? = nil,
        zoneYards: Int? = nil,
        zonePct: Double? = nil,
        zoneRoutes: Int? = nil,
        zoneSeparation: Double? = nil,
        manCatchpointYacGrade: Double? = nil,
        manSeparation: Double? = nil,
        redZoneSep: Double? = nil,
        redZoneGrade: Int? = nil,
        redZoneTprr: Int? = nil,
        redZoneRoutes: Int? = nil,
        zoneYprr: Double? = nil,
        zoneTprr: Double? = nil,
        manYprr: Double? = nil,
        manTprr: Double? = nil,
        tprrDif: Double? = nil,
        slotSnaps: Int? = nil,
        slotPct: Double? = nil,
        nonSlotSnaps: Int? = nil,
        singleCovRate: Double? = nil,
        singleCovSep: Double? = nil,
        singleCovGrade: Double? = nil,
        slotYards: Int? = nil,
        slotSeparation: Double? = nil,
        slotYprr: Double? = nil,
        slotTprr: Double? = nil,
        slotExplosiveRec: Double? = nil,
        slotGrade: Double? = nil,
        blitzTargetShare: Double? = nil,
        blitzSepGrade: Double? = nil,
        blitzGrade: Double? = nil,
        yprr: Double? = nil,
        noHelp: Double? = nil,
        help: Double? = nil,
        manNoHelpSep: Double? = nil
    ) -> WRStats {
        return WRStats(
            player: player ?? self.player,
            routes: routes ?? self.routes,
            offense: offense ?? self.offense,
            rosterPos: rosterPos ?? self.rosterPos,
            totYards: totYards ?? self.totYards,
            tprr: tprr ?? self.tprr,
            adot: adot ?? self.adot,
            deepGrade: deepGrade ?? self.deepGrade,
            separation: separation ?? self.separation,
            catchpointYacGrade: catchpointYacGrade ?? self.catchpointYacGrade,
            yac: yac ?? self.yac,
            manPct: manPct ?? self.manPct,
            manRoutes: manRoutes ?? self.manRoutes,
            manYards: manYards ?? self.manYards,
            zoneYards: zoneYards ?? self.zoneYards,
            zonePct: zonePct ?? self.zonePct,
            zoneRoutes: zoneRoutes ?? self.zoneRoutes,
            zoneSeparation: zoneSeparation ?? self.zoneSeparation,
            manCatchpointYacGrade: manCatchpointYacGrade ?? self.manCatchpointYacGrade,
            manSeparation: manSeparation ?? self.manSeparation,
            redZoneSep: redZoneSep ?? self.redZoneSep,
            redZoneGrade: redZoneGrade ?? self.redZoneGrade,
            redZoneTprr: redZoneTprr ?? self.redZoneTprr,
            redZoneRoutes: redZoneRoutes ?? self.redZoneRoutes,
            zoneYprr: zoneYprr ?? self.zoneYprr,
            zoneTprr: zoneTprr ?? self.zoneTprr,
            manYprr: manYprr ?? self.manYprr,
            manTprr: manTprr ?? self.manTprr,
            tprrDif: tprrDif ?? self.tprrDif,
            slotSnaps: slotSnaps ?? self.slotSnaps,
            slotPct: slotPct ?? self.slotPct,
            nonSlotSnaps: nonSlotSnaps ?? self.nonSlotSnaps,
            singleCovRate: singleCovRate ?? self.singleCovRate,
            singleCovSep: singleCovSep ?? self.singleCovSep,
            singleCovGrade: singleCovGrade ?? self.singleCovGrade,
            slotYards: slotYards ?? self.slotYards,
            slotSeparation: slotSeparation ?? self.slotSeparation,
            slotYprr: slotYprr ?? self.slotYprr,
            slotTprr: slotTprr ?? self.slotTprr,
            slotExplosiveRec: slotExplosiveRec ?? self.slotExplosiveRec,
            slotGrade: slotGrade ?? self.slotGrade,
            blitzTargetShare: blitzTargetShare ?? self.blitzTargetShare,
            blitzSepGrade: blitzSepGrade ?? self.blitzSepGrade,
            blitzGrade: blitzGrade ?? self.blitzGrade,
            yprr: yprr ?? self.yprr,
            noHelp: noHelp ?? self.noHelp,
            help: help ?? self.help,
            manNoHelpSep: manNoHelpSep ?? self.manNoHelpSep
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
