//
//  QB.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/24/24.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let qb = try Qb(json)

import Foundation

// MARK: - Qb
public struct QB {
    public let attempts: Int
    public let passerName: String
    public let offense: String
    public let yardsThrown: Int
    public let explosiveYards: Int
    public let explosiveYardPct: Double
    public let dropbacks: Int
    public let zoneExplosivePlayRate: Double
    public let manExplosivePlayRate: Double
    public let twpPct: Double
    public let acc: Double
    public let pffGrade: Double
    public let epa: Double
    public let pocketExtension: Double
    public let sackRate: Double
    public let realScramblesRate: Double
    public let realScramblesTotalEpa: Double
    public let nonScrambleEpa: Double
    public let p2S: Double
    public let timeToThrow: Double
    public let adot: Double
    public let systemThrow: Double
    public let systemThrowEpa: Double
    public let systemThrowGrade: Double
    public let nonSystemThrowEpa: Double
    public let nonSystemThrowGrade: Double
    public let manEpa: Double
    public let zoneEpa: Double
    public let cleanPocketPct: Double
    public let cleanPocketEpa: Double
    public let openMen: Double
    public let avgSep: Double
    public let tightPct: Double
    public let tightAcc: Double
    public let deepGrade: Double
    public let deepAcc: Double
    public let deepEpa: Double
    public let touchdowns: Int
    public let yac: Double
    public let openAcc: Double
    public let openPct: Double
    public let ypa: Double
    public let deepPct: Double
    public let medAcc: Double
    public let shortAcc: Double
    public let mofAcc: Double
    public let mofPct: Double
    public let mofEpa: Double
    public let manAdot: Double
    public let blitzPct: Double
    public let blitzGrade: Double
    public let noBlitzGrade: Double
    public let blitzEpa: Double
    public let blitzAdot: Double
    public let noBlitzAdot: Double
    public let noBlitzEpa: Double
    public let quickPresEpa: Double
    public let noQuickPresEpa: Double
    public let pressureEpaThrow: Double
    public let pressureEpa: Double
    public let sackScramblePressEpa: Double
    public let noPressureEpa: Double
    public let quickGamePct: Double
    public let quickGameEpa: Double
    public let yards: Int
    public let runPct: Double
    public let bttPct: Double
    public let bttDeepPct: Double
    public let perfectBlock: Double
    public let perfBlockEpa: Double
    public let pcpPct: Double
    public let pcpEpa: Double
    public let noPcpEpa: Double
    public let pcpGrade: Double
    public let noPcpGrade: Double
    public let rhythmEpa: Double
    public let rhythmPct: Double
    public let firstReadPct: Double
    public let firstReadEpa: Double
    public let distancePastSticks: Double
    public let pocketPct: Double
    public let nonPocketPct: Double
    public let downIn4Th: Double
    public let pocketEpa: Double
    public let nonPocketEpa: Double
    public let obviousPassingEpa: Double
    public let obviousPassingSack: Double
    public let obviousPassingAcc: Double
    public let disguisedCovFaced: Double
    public let disguisedCovEpa: Double
    public let singleHighEpa: Double
    public let twoHighEpa: Double
    public let player: String
    public let intEpa: Double
    public let intDropbacks: Double
    public let intAcc: Double
    public let passTd: Int
    public let pffGradeTrailing: Double
    public let epaTrailing: Double
    public let down2_ScoreEpa: Double
    public let down1_ScoreEpa: Double
    public let outRhythmPct: Double
    public let outRhythmEpa: Double
    public let pcpDropbacks: Int
    public let sackRateOutOfStructure: Double
    public let outOfStructurePlays: Int
    public let realScrambles: Int
    public let realScramblesSackEpa: Double
    public let realScramblesPasses: Double
    public let realScramblesPassEpa: Double
    public let realScramblesSack: Double
    public let realScramblesRun: Double
    public let realScramblesRuns: Int
    public let realScramblesRunEpa: Double
    public let realScramblesSackRunRatio: Double
    public let realScramblesPlayExtension: Int
    public let realScramblesTightPct: Int
    public let realScramblesOpenPct: Int
    public let realScramblesAcc: Double
    public let realScramblesAdot: Double

    public init(attempts: Int, passerName: String, offense: String, yardsThrown: Int, explosiveYards: Int, explosiveYardPct: Double, dropbacks: Int, zoneExplosivePlayRate: Double, manExplosivePlayRate: Double, twpPct: Double, acc: Double, pffGrade: Double, epa: Double, pocketExtension: Double, sackRate: Double, realScramblesRate: Double, realScramblesTotalEpa: Double, nonScrambleEpa: Double, p2S: Double, timeToThrow: Double, adot: Double, systemThrow: Double, systemThrowEpa: Double, systemThrowGrade: Double, nonSystemThrowEpa: Double, nonSystemThrowGrade: Double, manEpa: Double, zoneEpa: Double, cleanPocketPct: Double, cleanPocketEpa: Double, openMen: Double, avgSep: Double, tightPct: Double, tightAcc: Double, deepGrade: Double, deepAcc: Double, deepEpa: Double, touchdowns: Int, yac: Double, openAcc: Double, openPct: Double, ypa: Double, deepPct: Double, medAcc: Double, shortAcc: Double, mofAcc: Double, mofPct: Double, mofEpa: Double, manAdot: Double, blitzPct: Double, blitzGrade: Double, noBlitzGrade: Double, blitzEpa: Double, blitzAdot: Double, noBlitzAdot: Double, noBlitzEpa: Double, quickPresEpa: Double, noQuickPresEpa: Double, pressureEpaThrow: Double, pressureEpa: Double, sackScramblePressEpa: Double, noPressureEpa: Double, quickGamePct: Double, quickGameEpa: Double, yards: Int, runPct: Double, bttPct: Double, bttDeepPct: Double, perfectBlock: Double, perfBlockEpa: Double, pcpPct: Double, pcpEpa: Double, noPcpEpa: Double, pcpGrade: Double, noPcpGrade: Double, rhythmEpa: Double, rhythmPct: Double, firstReadPct: Double, firstReadEpa: Double, distancePastSticks: Double, pocketPct: Double, nonPocketPct: Double, downIn4Th: Double, pocketEpa: Double, nonPocketEpa: Double, obviousPassingEpa: Double, obviousPassingSack: Double, obviousPassingAcc: Double, disguisedCovFaced: Double, disguisedCovEpa: Double, singleHighEpa: Double, twoHighEpa: Double, player: String, intEpa: Double, intDropbacks: Double, intAcc: Double, passTd: Int, pffGradeTrailing: Double, epaTrailing: Double, down2_ScoreEpa: Double, down1_ScoreEpa: Double, outRhythmPct: Double, outRhythmEpa: Double, pcpDropbacks: Int, sackRateOutOfStructure: Double, outOfStructurePlays: Int, realScrambles: Int, realScramblesSackEpa: Double, realScramblesPasses: Double, realScramblesPassEpa: Double, realScramblesSack: Double, realScramblesRun: Double, realScramblesRuns: Int, realScramblesRunEpa: Double, realScramblesSackRunRatio: Double, realScramblesPlayExtension: Int, realScramblesTightPct: Int, realScramblesOpenPct: Int, realScramblesAcc: Double, realScramblesAdot: Double) {
        self.attempts = attempts
        self.passerName = passerName
        self.offense = offense
        self.yardsThrown = yardsThrown
        self.explosiveYards = explosiveYards
        self.explosiveYardPct = explosiveYardPct
        self.dropbacks = dropbacks
        self.zoneExplosivePlayRate = zoneExplosivePlayRate
        self.manExplosivePlayRate = manExplosivePlayRate
        self.twpPct = twpPct
        self.acc = acc
        self.pffGrade = pffGrade
        self.epa = epa
        self.pocketExtension = pocketExtension
        self.sackRate = sackRate
        self.realScramblesRate = realScramblesRate
        self.realScramblesTotalEpa = realScramblesTotalEpa
        self.nonScrambleEpa = nonScrambleEpa
        self.p2S = p2S
        self.timeToThrow = timeToThrow
        self.adot = adot
        self.systemThrow = systemThrow
        self.systemThrowEpa = systemThrowEpa
        self.systemThrowGrade = systemThrowGrade
        self.nonSystemThrowEpa = nonSystemThrowEpa
        self.nonSystemThrowGrade = nonSystemThrowGrade
        self.manEpa = manEpa
        self.zoneEpa = zoneEpa
        self.cleanPocketPct = cleanPocketPct
        self.cleanPocketEpa = cleanPocketEpa
        self.openMen = openMen
        self.avgSep = avgSep
        self.tightPct = tightPct
        self.tightAcc = tightAcc
        self.deepGrade = deepGrade
        self.deepAcc = deepAcc
        self.deepEpa = deepEpa
        self.touchdowns = touchdowns
        self.yac = yac
        self.openAcc = openAcc
        self.openPct = openPct
        self.ypa = ypa
        self.deepPct = deepPct
        self.medAcc = medAcc
        self.shortAcc = shortAcc
        self.mofAcc = mofAcc
        self.mofPct = mofPct
        self.mofEpa = mofEpa
        self.manAdot = manAdot
        self.blitzPct = blitzPct
        self.blitzGrade = blitzGrade
        self.noBlitzGrade = noBlitzGrade
        self.blitzEpa = blitzEpa
        self.blitzAdot = blitzAdot
        self.noBlitzAdot = noBlitzAdot
        self.noBlitzEpa = noBlitzEpa
        self.quickPresEpa = quickPresEpa
        self.noQuickPresEpa = noQuickPresEpa
        self.pressureEpaThrow = pressureEpaThrow
        self.pressureEpa = pressureEpa
        self.sackScramblePressEpa = sackScramblePressEpa
        self.noPressureEpa = noPressureEpa
        self.quickGamePct = quickGamePct
        self.quickGameEpa = quickGameEpa
        self.yards = yards
        self.runPct = runPct
        self.bttPct = bttPct
        self.bttDeepPct = bttDeepPct
        self.perfectBlock = perfectBlock
        self.perfBlockEpa = perfBlockEpa
        self.pcpPct = pcpPct
        self.pcpEpa = pcpEpa
        self.noPcpEpa = noPcpEpa
        self.pcpGrade = pcpGrade
        self.noPcpGrade = noPcpGrade
        self.rhythmEpa = rhythmEpa
        self.rhythmPct = rhythmPct
        self.firstReadPct = firstReadPct
        self.firstReadEpa = firstReadEpa
        self.distancePastSticks = distancePastSticks
        self.pocketPct = pocketPct
        self.nonPocketPct = nonPocketPct
        self.downIn4Th = downIn4Th
        self.pocketEpa = pocketEpa
        self.nonPocketEpa = nonPocketEpa
        self.obviousPassingEpa = obviousPassingEpa
        self.obviousPassingSack = obviousPassingSack
        self.obviousPassingAcc = obviousPassingAcc
        self.disguisedCovFaced = disguisedCovFaced
        self.disguisedCovEpa = disguisedCovEpa
        self.singleHighEpa = singleHighEpa
        self.twoHighEpa = twoHighEpa
        self.player = player
        self.intEpa = intEpa
        self.intDropbacks = intDropbacks
        self.intAcc = intAcc
        self.passTd = passTd
        self.pffGradeTrailing = pffGradeTrailing
        self.epaTrailing = epaTrailing
        self.down2_ScoreEpa = down2_ScoreEpa
        self.down1_ScoreEpa = down1_ScoreEpa
        self.outRhythmPct = outRhythmPct
        self.outRhythmEpa = outRhythmEpa
        self.pcpDropbacks = pcpDropbacks
        self.sackRateOutOfStructure = sackRateOutOfStructure
        self.outOfStructurePlays = outOfStructurePlays
        self.realScrambles = realScrambles
        self.realScramblesSackEpa = realScramblesSackEpa
        self.realScramblesPasses = realScramblesPasses
        self.realScramblesPassEpa = realScramblesPassEpa
        self.realScramblesSack = realScramblesSack
        self.realScramblesRun = realScramblesRun
        self.realScramblesRuns = realScramblesRuns
        self.realScramblesRunEpa = realScramblesRunEpa
        self.realScramblesSackRunRatio = realScramblesSackRunRatio
        self.realScramblesPlayExtension = realScramblesPlayExtension
        self.realScramblesTightPct = realScramblesTightPct
        self.realScramblesOpenPct = realScramblesOpenPct
        self.realScramblesAcc = realScramblesAcc
        self.realScramblesAdot = realScramblesAdot
    }
}

