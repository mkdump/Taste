// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let qBStats = try QBStats(json)

import Foundation

// MARK: - QBStats
public struct QBStats: Codable {
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

    public enum CodingKeys: String, CodingKey {
        case attempts = "attempts"
        case passerName = "passer_name"
        case offense = "offense"
        case yardsThrown = "yards_thrown"
        case explosiveYards = "explosive_yards"
        case explosiveYardPct = "explosive_yard_pct"
        case dropbacks = "dropbacks"
        case zoneExplosivePlayRate = "zone_explosive_play_rate"
        case manExplosivePlayRate = "man_explosive_play_rate"
        case twpPct = "twp_pct"
        case acc = "acc"
        case pffGrade = "PFF_grade"
        case epa = "epa"
        case pocketExtension = "pocket_extension"
        case sackRate = "sack_rate"
        case realScramblesRate = "real_scrambles_rate"
        case realScramblesTotalEpa = "real_scrambles_total_epa"
        case nonScrambleEpa = "non_scramble_epa"
        case p2S = "p2s"
        case timeToThrow = "time_to_throw"
        case adot = "ADOT"
        case systemThrow = "system_throw"
        case systemThrowEpa = "system_throw_epa"
        case systemThrowGrade = "system_throw_grade"
        case nonSystemThrowEpa = "non_system_throw_epa"
        case nonSystemThrowGrade = "non_system_throw_grade"
        case manEpa = "man_epa"
        case zoneEpa = "zone_epa"
        case cleanPocketPct = "clean_pocket_pct"
        case cleanPocketEpa = "clean_pocket_epa"
        case openMen = "open_men"
        case avgSep = "avg_sep"
        case tightPct = "tight_pct"
        case tightAcc = "tight_acc"
        case deepGrade = "deep_grade"
        case deepAcc = "deep_acc"
        case deepEpa = "deep_epa"
        case touchdowns = "touchdowns"
        case yac = "YAC"
        case openAcc = "open_acc"
        case openPct = "open_pct"
        case ypa = "ypa"
        case deepPct = "deep_pct"
        case medAcc = "med_acc"
        case shortAcc = "short_acc"
        case mofAcc = "MOF_acc"
        case mofPct = "MOF_pct"
        case mofEpa = "MOF_EPA"
        case manAdot = "man_adot"
        case blitzPct = "blitz_pct"
        case blitzGrade = "blitz_grade"
        case noBlitzGrade = "no_blitz_grade"
        case blitzEpa = "blitz_epa"
        case blitzAdot = "blitz_adot"
        case noBlitzAdot = "no_blitz_adot"
        case noBlitzEpa = "no_blitz_epa"
        case quickPresEpa = "quick_pres_epa"
        case noQuickPresEpa = "no_quick_pres_epa"
        case pressureEpaThrow = "pressure_epa_throw"
        case pressureEpa = "pressure_epa"
        case sackScramblePressEpa = "sack_scramble_press_epa"
        case noPressureEpa = "no_pressure_epa"
        case quickGamePct = "quick_game_pct"
        case quickGameEpa = "quick_game_epa"
        case yards = "yards"
        case runPct = "run_pct"
        case bttPct = "btt_pct"
        case bttDeepPct = "btt_deep_pct"
        case perfectBlock = "perfect_block"
        case perfBlockEpa = "perf_block_epa"
        case pcpPct = "pcp_pct"
        case pcpEpa = "pcp_epa"
        case noPcpEpa = "no_pcp_epa"
        case pcpGrade = "pcp_grade"
        case noPcpGrade = "no_pcp_grade"
        case rhythmEpa = "rhythm_epa"
        case rhythmPct = "rhythm_pct"
        case firstReadPct = "first_read_pct"
        case firstReadEpa = "first_read_epa"
        case distancePastSticks = "distance_past_sticks"
        case pocketPct = "pocket_pct"
        case nonPocketPct = "non_pocket_pct"
        case downIn4Th = "down_in4th"
        case pocketEpa = "pocket_epa"
        case nonPocketEpa = "non_pocket_epa"
        case obviousPassingEpa = "obvious_passing_epa"
        case obviousPassingSack = "obvious_passing_sack"
        case obviousPassingAcc = "obvious_passing_acc"
        case disguisedCovFaced = "disguised_cov_faced"
        case disguisedCovEpa = "disguised_cov_epa"
        case singleHighEpa = "single_high_epa"
        case twoHighEpa = "two_high_epa"
        case player = "player"
        case intEpa = "int_epa"
        case intDropbacks = "int_dropbacks"
        case intAcc = "int_acc"
        case passTd = "pass_td"
        case pffGradeTrailing = "PFF_grade_trailing"
        case epaTrailing = "EPA_trailing"
        case down2_ScoreEpa = "down_2_score_epa"
        case down1_ScoreEpa = "down_1_score_epa"
        case outRhythmPct = "out_rhythm_pct"
        case outRhythmEpa = "out_rhythm_epa"
        case pcpDropbacks = "pcp_dropbacks"
        case sackRateOutOfStructure = "sack_rate_out_of_structure"
        case outOfStructurePlays = "out_of_structure_plays"
        case realScrambles = "real_scrambles"
        case realScramblesSackEpa = "real_scrambles_sack_epa"
        case realScramblesPasses = "real_scrambles_passes"
        case realScramblesPassEpa = "real_scrambles_pass_epa"
        case realScramblesSack = "real_scrambles_sack"
        case realScramblesRun = "real_scrambles_run"
        case realScramblesRuns = "real_scrambles_runs"
        case realScramblesRunEpa = "real_scrambles_run_epa"
        case realScramblesSackRunRatio = "real_scrambles_sack_run_ratio"
        case realScramblesPlayExtension = "real_scrambles_play_extension"
        case realScramblesTightPct = "real_scrambles_tight_pct"
        case realScramblesOpenPct = "real_scrambles_open_pct"
        case realScramblesAcc = "real_scrambles_acc"
        case realScramblesAdot = "real_scrambles_ADOT"
    }

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

// MARK: QBStats convenience initializers and mutators

public extension QBStats {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(QBStats.self, from: data)
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
        attempts: Int? = nil,
        passerName: String? = nil,
        offense: String? = nil,
        yardsThrown: Int? = nil,
        explosiveYards: Int? = nil,
        explosiveYardPct: Double? = nil,
        dropbacks: Int? = nil,
        zoneExplosivePlayRate: Double? = nil,
        manExplosivePlayRate: Double? = nil,
        twpPct: Double? = nil,
        acc: Double? = nil,
        pffGrade: Double? = nil,
        epa: Double? = nil,
        pocketExtension: Double? = nil,
        sackRate: Double? = nil,
        realScramblesRate: Double? = nil,
        realScramblesTotalEpa: Double? = nil,
        nonScrambleEpa: Double? = nil,
        p2S: Double? = nil,
        timeToThrow: Double? = nil,
        adot: Double? = nil,
        systemThrow: Double? = nil,
        systemThrowEpa: Double? = nil,
        systemThrowGrade: Double? = nil,
        nonSystemThrowEpa: Double? = nil,
        nonSystemThrowGrade: Double? = nil,
        manEpa: Double? = nil,
        zoneEpa: Double? = nil,
        cleanPocketPct: Double? = nil,
        cleanPocketEpa: Double? = nil,
        openMen: Double? = nil,
        avgSep: Double? = nil,
        tightPct: Double? = nil,
        tightAcc: Double? = nil,
        deepGrade: Double? = nil,
        deepAcc: Double? = nil,
        deepEpa: Double? = nil,
        touchdowns: Int? = nil,
        yac: Double? = nil,
        openAcc: Double? = nil,
        openPct: Double? = nil,
        ypa: Double? = nil,
        deepPct: Double? = nil,
        medAcc: Double? = nil,
        shortAcc: Double? = nil,
        mofAcc: Double? = nil,
        mofPct: Double? = nil,
        mofEpa: Double? = nil,
        manAdot: Double? = nil,
        blitzPct: Double? = nil,
        blitzGrade: Double? = nil,
        noBlitzGrade: Double? = nil,
        blitzEpa: Double? = nil,
        blitzAdot: Double? = nil,
        noBlitzAdot: Double? = nil,
        noBlitzEpa: Double? = nil,
        quickPresEpa: Double? = nil,
        noQuickPresEpa: Double? = nil,
        pressureEpaThrow: Double? = nil,
        pressureEpa: Double? = nil,
        sackScramblePressEpa: Double? = nil,
        noPressureEpa: Double? = nil,
        quickGamePct: Double? = nil,
        quickGameEpa: Double? = nil,
        yards: Int? = nil,
        runPct: Double? = nil,
        bttPct: Double? = nil,
        bttDeepPct: Double? = nil,
        perfectBlock: Double? = nil,
        perfBlockEpa: Double? = nil,
        pcpPct: Double? = nil,
        pcpEpa: Double? = nil,
        noPcpEpa: Double? = nil,
        pcpGrade: Double? = nil,
        noPcpGrade: Double? = nil,
        rhythmEpa: Double? = nil,
        rhythmPct: Double? = nil,
        firstReadPct: Double? = nil,
        firstReadEpa: Double? = nil,
        distancePastSticks: Double? = nil,
        pocketPct: Double? = nil,
        nonPocketPct: Double? = nil,
        downIn4Th: Double? = nil,
        pocketEpa: Double? = nil,
        nonPocketEpa: Double? = nil,
        obviousPassingEpa: Double? = nil,
        obviousPassingSack: Double? = nil,
        obviousPassingAcc: Double? = nil,
        disguisedCovFaced: Double? = nil,
        disguisedCovEpa: Double? = nil,
        singleHighEpa: Double? = nil,
        twoHighEpa: Double? = nil,
        player: String? = nil,
        intEpa: Double? = nil,
        intDropbacks: Double? = nil,
        intAcc: Double? = nil,
        passTd: Int? = nil,
        pffGradeTrailing: Double? = nil,
        epaTrailing: Double? = nil,
        down2_ScoreEpa: Double? = nil,
        down1_ScoreEpa: Double? = nil,
        outRhythmPct: Double? = nil,
        outRhythmEpa: Double? = nil,
        pcpDropbacks: Int? = nil,
        sackRateOutOfStructure: Double? = nil,
        outOfStructurePlays: Int? = nil,
        realScrambles: Int? = nil,
        realScramblesSackEpa: Double? = nil,
        realScramblesPasses: Double? = nil,
        realScramblesPassEpa: Double? = nil,
        realScramblesSack: Double? = nil,
        realScramblesRun: Double? = nil,
        realScramblesRuns: Int? = nil,
        realScramblesRunEpa: Double? = nil,
        realScramblesSackRunRatio: Double? = nil,
        realScramblesPlayExtension: Int? = nil,
        realScramblesTightPct: Int? = nil,
        realScramblesOpenPct: Int? = nil,
        realScramblesAcc: Double? = nil,
        realScramblesAdot: Double? = nil
    ) -> QBStats {
        return QBStats(
            attempts: attempts ?? self.attempts,
            passerName: passerName ?? self.passerName,
            offense: offense ?? self.offense,
            yardsThrown: yardsThrown ?? self.yardsThrown,
            explosiveYards: explosiveYards ?? self.explosiveYards,
            explosiveYardPct: explosiveYardPct ?? self.explosiveYardPct,
            dropbacks: dropbacks ?? self.dropbacks,
            zoneExplosivePlayRate: zoneExplosivePlayRate ?? self.zoneExplosivePlayRate,
            manExplosivePlayRate: manExplosivePlayRate ?? self.manExplosivePlayRate,
            twpPct: twpPct ?? self.twpPct,
            acc: acc ?? self.acc,
            pffGrade: pffGrade ?? self.pffGrade,
            epa: epa ?? self.epa,
            pocketExtension: pocketExtension ?? self.pocketExtension,
            sackRate: sackRate ?? self.sackRate,
            realScramblesRate: realScramblesRate ?? self.realScramblesRate,
            realScramblesTotalEpa: realScramblesTotalEpa ?? self.realScramblesTotalEpa,
            nonScrambleEpa: nonScrambleEpa ?? self.nonScrambleEpa,
            p2S: p2S ?? self.p2S,
            timeToThrow: timeToThrow ?? self.timeToThrow,
            adot: adot ?? self.adot,
            systemThrow: systemThrow ?? self.systemThrow,
            systemThrowEpa: systemThrowEpa ?? self.systemThrowEpa,
            systemThrowGrade: systemThrowGrade ?? self.systemThrowGrade,
            nonSystemThrowEpa: nonSystemThrowEpa ?? self.nonSystemThrowEpa,
            nonSystemThrowGrade: nonSystemThrowGrade ?? self.nonSystemThrowGrade,
            manEpa: manEpa ?? self.manEpa,
            zoneEpa: zoneEpa ?? self.zoneEpa,
            cleanPocketPct: cleanPocketPct ?? self.cleanPocketPct,
            cleanPocketEpa: cleanPocketEpa ?? self.cleanPocketEpa,
            openMen: openMen ?? self.openMen,
            avgSep: avgSep ?? self.avgSep,
            tightPct: tightPct ?? self.tightPct,
            tightAcc: tightAcc ?? self.tightAcc,
            deepGrade: deepGrade ?? self.deepGrade,
            deepAcc: deepAcc ?? self.deepAcc,
            deepEpa: deepEpa ?? self.deepEpa,
            touchdowns: touchdowns ?? self.touchdowns,
            yac: yac ?? self.yac,
            openAcc: openAcc ?? self.openAcc,
            openPct: openPct ?? self.openPct,
            ypa: ypa ?? self.ypa,
            deepPct: deepPct ?? self.deepPct,
            medAcc: medAcc ?? self.medAcc,
            shortAcc: shortAcc ?? self.shortAcc,
            mofAcc: mofAcc ?? self.mofAcc,
            mofPct: mofPct ?? self.mofPct,
            mofEpa: mofEpa ?? self.mofEpa,
            manAdot: manAdot ?? self.manAdot,
            blitzPct: blitzPct ?? self.blitzPct,
            blitzGrade: blitzGrade ?? self.blitzGrade,
            noBlitzGrade: noBlitzGrade ?? self.noBlitzGrade,
            blitzEpa: blitzEpa ?? self.blitzEpa,
            blitzAdot: blitzAdot ?? self.blitzAdot,
            noBlitzAdot: noBlitzAdot ?? self.noBlitzAdot,
            noBlitzEpa: noBlitzEpa ?? self.noBlitzEpa,
            quickPresEpa: quickPresEpa ?? self.quickPresEpa,
            noQuickPresEpa: noQuickPresEpa ?? self.noQuickPresEpa,
            pressureEpaThrow: pressureEpaThrow ?? self.pressureEpaThrow,
            pressureEpa: pressureEpa ?? self.pressureEpa,
            sackScramblePressEpa: sackScramblePressEpa ?? self.sackScramblePressEpa,
            noPressureEpa: noPressureEpa ?? self.noPressureEpa,
            quickGamePct: quickGamePct ?? self.quickGamePct,
            quickGameEpa: quickGameEpa ?? self.quickGameEpa,
            yards: yards ?? self.yards,
            runPct: runPct ?? self.runPct,
            bttPct: bttPct ?? self.bttPct,
            bttDeepPct: bttDeepPct ?? self.bttDeepPct,
            perfectBlock: perfectBlock ?? self.perfectBlock,
            perfBlockEpa: perfBlockEpa ?? self.perfBlockEpa,
            pcpPct: pcpPct ?? self.pcpPct,
            pcpEpa: pcpEpa ?? self.pcpEpa,
            noPcpEpa: noPcpEpa ?? self.noPcpEpa,
            pcpGrade: pcpGrade ?? self.pcpGrade,
            noPcpGrade: noPcpGrade ?? self.noPcpGrade,
            rhythmEpa: rhythmEpa ?? self.rhythmEpa,
            rhythmPct: rhythmPct ?? self.rhythmPct,
            firstReadPct: firstReadPct ?? self.firstReadPct,
            firstReadEpa: firstReadEpa ?? self.firstReadEpa,
            distancePastSticks: distancePastSticks ?? self.distancePastSticks,
            pocketPct: pocketPct ?? self.pocketPct,
            nonPocketPct: nonPocketPct ?? self.nonPocketPct,
            downIn4Th: downIn4Th ?? self.downIn4Th,
            pocketEpa: pocketEpa ?? self.pocketEpa,
            nonPocketEpa: nonPocketEpa ?? self.nonPocketEpa,
            obviousPassingEpa: obviousPassingEpa ?? self.obviousPassingEpa,
            obviousPassingSack: obviousPassingSack ?? self.obviousPassingSack,
            obviousPassingAcc: obviousPassingAcc ?? self.obviousPassingAcc,
            disguisedCovFaced: disguisedCovFaced ?? self.disguisedCovFaced,
            disguisedCovEpa: disguisedCovEpa ?? self.disguisedCovEpa,
            singleHighEpa: singleHighEpa ?? self.singleHighEpa,
            twoHighEpa: twoHighEpa ?? self.twoHighEpa,
            player: player ?? self.player,
            intEpa: intEpa ?? self.intEpa,
            intDropbacks: intDropbacks ?? self.intDropbacks,
            intAcc: intAcc ?? self.intAcc,
            passTd: passTd ?? self.passTd,
            pffGradeTrailing: pffGradeTrailing ?? self.pffGradeTrailing,
            epaTrailing: epaTrailing ?? self.epaTrailing,
            down2_ScoreEpa: down2_ScoreEpa ?? self.down2_ScoreEpa,
            down1_ScoreEpa: down1_ScoreEpa ?? self.down1_ScoreEpa,
            outRhythmPct: outRhythmPct ?? self.outRhythmPct,
            outRhythmEpa: outRhythmEpa ?? self.outRhythmEpa,
            pcpDropbacks: pcpDropbacks ?? self.pcpDropbacks,
            sackRateOutOfStructure: sackRateOutOfStructure ?? self.sackRateOutOfStructure,
            outOfStructurePlays: outOfStructurePlays ?? self.outOfStructurePlays,
            realScrambles: realScrambles ?? self.realScrambles,
            realScramblesSackEpa: realScramblesSackEpa ?? self.realScramblesSackEpa,
            realScramblesPasses: realScramblesPasses ?? self.realScramblesPasses,
            realScramblesPassEpa: realScramblesPassEpa ?? self.realScramblesPassEpa,
            realScramblesSack: realScramblesSack ?? self.realScramblesSack,
            realScramblesRun: realScramblesRun ?? self.realScramblesRun,
            realScramblesRuns: realScramblesRuns ?? self.realScramblesRuns,
            realScramblesRunEpa: realScramblesRunEpa ?? self.realScramblesRunEpa,
            realScramblesSackRunRatio: realScramblesSackRunRatio ?? self.realScramblesSackRunRatio,
            realScramblesPlayExtension: realScramblesPlayExtension ?? self.realScramblesPlayExtension,
            realScramblesTightPct: realScramblesTightPct ?? self.realScramblesTightPct,
            realScramblesOpenPct: realScramblesOpenPct ?? self.realScramblesOpenPct,
            realScramblesAcc: realScramblesAcc ?? self.realScramblesAcc,
            realScramblesAdot: realScramblesAdot ?? self.realScramblesAdot
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
