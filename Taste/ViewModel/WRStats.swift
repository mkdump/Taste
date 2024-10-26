//
//  QbModel.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/24/24.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try Welcome(json)

import Foundation

// MARK: - Welcome
public struct WR {
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

