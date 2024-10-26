// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let teamStats = try TeamStats(json)

import Foundation

// MARK: - TeamStats
public struct TeamStats: Codable {
    public let offense: String
    public let season2: String
    public let motionRate: Double
    public let disruptionRate: Double
    public let pressureDisruption: Double
    public let nonDisruptivePressure: Double
    public let nonDisruptionEpa: Double
    public let perfectCoverageFaced: Double
    public let blitzRateFaced: Double
    public let offManEpa: Double
    public let offZoneEpa: Double
    public let pcpObvious: Double
    public let epaObvious: Double
    public let avgSep: Double
    public let offAttempts: Int
    public let offEpa: Double
    public let adot: Double
    public let offExplosivePlayX: Double
    public let offDropbacks: Int
    public let playActionRate: Double
    public let mofEpa: Double
    public let mofPct: Double
    public let boundEpa: Double
    public let boundRate: Double
    public let timeToThrow: Double
    public let timeToPressure: Double
    public let offAcc: Double
    public let offTightPct: Double
    public let perfBlock: Double
    public let offQuickPres: Double
    public let offSackRateReg: Double
    public let offSackRateObs: Double
    public let offXpassRate: Double
    public let manCovRateFaced: Double
    public let zoneCovRateFaced: Double
    public let offPressureRate: Double
    public let playsX: Int
    public let offProeAvg: Double
    public let proeLead: Double
    public let proeTrail: Double
    public let offYdsPlay: Double
    public let offSacks: Double
    public let offDriveEpa: Int
    public let offEpaPlay: Double
    public let offRushEpa: Double
    public let offPassEpa: Double
    public let offEdEpa: Double
    public let offLdEpa: Double
    public let offSr: Double
    public let rushSr: Double
    public let passSr: Double
    public let offEdsr: Double
    public let offLdsr: Double
    public let offExplosivePlayRate: Double
    public let offExplosivePassRate: Double
    public let offExplosiveRunRate: Double
    public let offExplosivePlayY: Int
    public let offAirYards: Double
    public let offYacAvg: Double
    public let offQbScrambleRate: Double
    public let offQbSackRate: Double
    public let offFirstDownPassRate: Double
    public let offAttemptsY: Int
    public let offRuns: Int
    public let teamName: String
    public let teamId: String
    public let teamNick: String
    public let teamConf: String
    public let teamDivision: String
    public let teamColor: String
    public let teamColor2: String
    public let teamColor3: String
    public let teamColor4: String
    public let teamLogoWikipedia: String
    public let teamLogoEspn: String
    public let teamWordmark: String
    public let teamConferenceLogo: String
    public let teamLeagueLogo: String
    public let season79: String
    public let epaAllowed: Double
    public let ypaAllowed: Double
    public let perfectCoverage: Double
    public let defDisruptionRate: Double
    public let defDisruptionEpa: Double
    public let defNonDisruptionEpa: Double
    public let defPressureDisruption: Double
    public let defNonDisruptivePressure: Double
    public let blitzRate: Double
    public let manCovRate: Double
    public let zoneCovRate: Double
    public let avgSepAllowed: Double
    public let manEpa: Double
    public let zoneEpa: Double
    public let pressureRate: Double
    public let tightCov: Double
    public let quickPres: Double
    public let defPcpObvious: Double
    public let attemptsFaced: Int
    public let yacAvgAllowed: Double
    public let adotFaced: Double
    public let defTimeToThrow: Double
    public let explosivePlay: Double
    public let defPressureRhy: Double
    public let openPct: Double
    public let dropbacksFaced: Int
    public let defMofEpa: Double
    public let defTimeToPressure: Double
    public let defBoundEpa: Double
    public let defBoundRate: Double
    public let defMofPct: Double
    public let acc: Double
    public let blockingMistakesForced: Double
    public let defXpassRate: Double
    public let defSackRateReg: Double
    public let defSackRateObs: Double
    public let epaNoQuick: Double
    public let epaQuickPress: Double
    public let quickPressureDelta: Double
    public let playsY: Int
    public let def: String
    public let defProeAvg: Double
    public let defYdsPlay: Double
    public let defDriveEpa: Double
    public let edEpa: Double
    public let ldEpa: Double
    public let epaPlay: Double
    public let rushEpa: Double
    public let passEpa: Double
    public let defSr: Double
    public let defRushYds: Double
    public let defRushSr: Double
    public let defPassSr: Double
    public let defFunnellSuccess: Double
    public let funnellEpa: Double
    public let defEdsr: Double
    public let defLdsr: Double
    public let defExplosivePlayRate: Double
    public let defExplosivePassRate: Double
    public let defExplosiveRunRate: Double
    public let defExplosivePlay: Int
    public let defAirYards: Double
    public let defYacAvg: Double
    public let defQbScrambleRate: Double
    public let defQbSackRate: Double
    public let defAttempts: Int
    public let defRuns: Int
    public let defScrambleEpa: Double
    public let defScrambleYards: Int
    public let defFirstDownPassRate: Double

    public enum CodingKeys: String, CodingKey {
        case offense = "offense"
        case season2 = "season_2"
        case motionRate = "motion_rate"
        case disruptionRate = "disruption_rate"
        case pressureDisruption = "pressure_disruption"
        case nonDisruptivePressure = "non_disruptive_pressure"
        case nonDisruptionEpa = "non_disruption_epa"
        case perfectCoverageFaced = "perfect_coverage_faced"
        case blitzRateFaced = "blitz_rate_faced"
        case offManEpa = "off_man_epa"
        case offZoneEpa = "off_zone_epa"
        case pcpObvious = "pcp_obvious"
        case epaObvious = "epa_obvious"
        case avgSep = "avg_sep"
        case offAttempts = "off_attempts"
        case offEpa = "off_epa"
        case adot = "ADOT"
        case offExplosivePlayX = "off_explosive_play.x"
        case offDropbacks = "off_dropbacks"
        case playActionRate = "play_action_rate"
        case mofEpa = "MOF_epa"
        case mofPct = "MOF_pct"
        case boundEpa = "bound_epa"
        case boundRate = "bound_rate"
        case timeToThrow = "time_to_throw"
        case timeToPressure = "time_to_pressure"
        case offAcc = "off_acc"
        case offTightPct = "off_tight_pct"
        case perfBlock = "perf_block"
        case offQuickPres = "off_quick_pres"
        case offSackRateReg = "off_sack_rate_reg"
        case offSackRateObs = "off_sack_rate_obs"
        case offXpassRate = "off_xpass_rate"
        case manCovRateFaced = "man_cov_rate_faced"
        case zoneCovRateFaced = "zone_cov_rate_faced"
        case offPressureRate = "off_pressure_rate"
        case playsX = "plays.x"
        case offProeAvg = "off_proe_avg"
        case proeLead = "proe_lead"
        case proeTrail = "proe_trail"
        case offYdsPlay = "off_Yds_play"
        case offSacks = "off_sacks"
        case offDriveEpa = "off_Drive_epa"
        case offEpaPlay = "off_epa_play"
        case offRushEpa = "off_rush_epa"
        case offPassEpa = "off_pass_epa"
        case offEdEpa = "off_ed_epa"
        case offLdEpa = "off_ld_epa"
        case offSr = "off_SR"
        case rushSr = "rush_sr"
        case passSr = "pass_sr"
        case offEdsr = "off_EDSR"
        case offLdsr = "off_LDSR"
        case offExplosivePlayRate = "off_explosive_play_rate"
        case offExplosivePassRate = "off_explosive_pass_rate"
        case offExplosiveRunRate = "off_explosive_run_rate"
        case offExplosivePlayY = "off_explosive_play.y"
        case offAirYards = "off_Air_yards"
        case offYacAvg = "off_yac_avg"
        case offQbScrambleRate = "off_qb_scramble_rate"
        case offQbSackRate = "off_qb_sack_rate"
        case offFirstDownPassRate = "off_first_down_pass_rate"
        case offAttemptsY = "off_attempts.y"
        case offRuns = "off_runs"
        case teamName = "team_name"
        case teamId = "team_id"
        case teamNick = "team_nick"
        case teamConf = "team_conf"
        case teamDivision = "team_division"
        case teamColor = "team_color"
        case teamColor2 = "team_color2"
        case teamColor3 = "team_color3"
        case teamColor4 = "team_color4"
        case teamLogoWikipedia = "team_logo_wikipedia"
        case teamLogoEspn = "team_logo_espn"
        case teamWordmark = "team_wordmark"
        case teamConferenceLogo = "team_conference_logo"
        case teamLeagueLogo = "team_league_logo"
        case season79 = "season_79"
        case epaAllowed = "epa_allowed"
        case ypaAllowed = "ypa_allowed"
        case perfectCoverage = "perfect_coverage"
        case defDisruptionRate = "def_disruption_rate"
        case defDisruptionEpa = "def_disruption_epa"
        case defNonDisruptionEpa = "def_non_disruption_epa"
        case defPressureDisruption = "def_pressure_disruption"
        case defNonDisruptivePressure = "def_non_disruptive_pressure"
        case blitzRate = "blitz_rate"
        case manCovRate = "man_cov_rate"
        case zoneCovRate = "zone_cov_rate"
        case avgSepAllowed = "avg_sep_allowed"
        case manEpa = "man_epa"
        case zoneEpa = "zone_epa"
        case pressureRate = "pressure_rate"
        case tightCov = "tight_cov"
        case quickPres = "quick_pres"
        case defPcpObvious = "def_pcp_obvious"
        case attemptsFaced = "attempts_faced"
        case yacAvgAllowed = "yac_avg_allowed"
        case adotFaced = "ADOT_faced"
        case defTimeToThrow = "def_time_to_throw"
        case explosivePlay = "explosive_play"
        case defPressureRhy = "def_pressure_rhy"
        case openPct = "open_pct"
        case dropbacksFaced = "dropbacks_faced"
        case defMofEpa = "def_MOF_epa"
        case defTimeToPressure = "def_time_to_pressure"
        case defBoundEpa = "def_bound_epa"
        case defBoundRate = "def_bound_rate"
        case defMofPct = "def_MOF_pct"
        case acc = "acc"
        case blockingMistakesForced = "blocking_mistakes_forced"
        case defXpassRate = "def_xpass_rate"
        case defSackRateReg = "def_sack_rate_reg"
        case defSackRateObs = "def_sack_rate_obs"
        case epaNoQuick = "epa_no_quick"
        case epaQuickPress = "epa_quick_press"
        case quickPressureDelta = "quick_pressure_delta"
        case playsY = "plays.y"
        case def = "def"
        case defProeAvg = "def_proe_avg"
        case defYdsPlay = "def_Yds_play"
        case defDriveEpa = "def_Drive_epa"
        case edEpa = "ed_epa"
        case ldEpa = "ld_epa"
        case epaPlay = "epa_play"
        case rushEpa = "rush_epa"
        case passEpa = "pass_epa"
        case defSr = "def_SR"
        case defRushYds = "def_rush_yds"
        case defRushSr = "def_rush_SR"
        case defPassSr = "def_pass_SR"
        case defFunnellSuccess = "def_funnell_success"
        case funnellEpa = "funnell_epa"
        case defEdsr = "def_EDSR"
        case defLdsr = "def_LDSR"
        case defExplosivePlayRate = "def_explosive_play_rate"
        case defExplosivePassRate = "def_explosive_pass_rate"
        case defExplosiveRunRate = "def_explosive_run_rate"
        case defExplosivePlay = "def_explosive_play"
        case defAirYards = "def_Air_yards"
        case defYacAvg = "def_yac_avg"
        case defQbScrambleRate = "def_qb_scramble_rate"
        case defQbSackRate = "def_qb_sack_rate"
        case defAttempts = "def_attempts"
        case defRuns = "def_runs"
        case defScrambleEpa = "def_scramble_epa"
        case defScrambleYards = "def_scramble_yards"
        case defFirstDownPassRate = "def_first_down_pass_rate"
    }

    public init(offense: String, season2: String, motionRate: Double, disruptionRate: Double, pressureDisruption: Double, nonDisruptivePressure: Double, nonDisruptionEpa: Double, perfectCoverageFaced: Double, blitzRateFaced: Double, offManEpa: Double, offZoneEpa: Double, pcpObvious: Double, epaObvious: Double, avgSep: Double, offAttempts: Int, offEpa: Double, adot: Double, offExplosivePlayX: Double, offDropbacks: Int, playActionRate: Double, mofEpa: Double, mofPct: Double, boundEpa: Double, boundRate: Double, timeToThrow: Double, timeToPressure: Double, offAcc: Double, offTightPct: Double, perfBlock: Double, offQuickPres: Double, offSackRateReg: Double, offSackRateObs: Double, offXpassRate: Double, manCovRateFaced: Double, zoneCovRateFaced: Double, offPressureRate: Double, playsX: Int, offProeAvg: Double, proeLead: Double, proeTrail: Double, offYdsPlay: Double, offSacks: Double, offDriveEpa: Int, offEpaPlay: Double, offRushEpa: Double, offPassEpa: Double, offEdEpa: Double, offLdEpa: Double, offSr: Double, rushSr: Double, passSr: Double, offEdsr: Double, offLdsr: Double, offExplosivePlayRate: Double, offExplosivePassRate: Double, offExplosiveRunRate: Double, offExplosivePlayY: Int, offAirYards: Double, offYacAvg: Double, offQbScrambleRate: Double, offQbSackRate: Double, offFirstDownPassRate: Double, offAttemptsY: Int, offRuns: Int, teamName: String, teamId: String, teamNick: String, teamConf: String, teamDivision: String, teamColor: String, teamColor2: String, teamColor3: String, teamColor4: String, teamLogoWikipedia: String, teamLogoEspn: String, teamWordmark: String, teamConferenceLogo: String, teamLeagueLogo: String, season79: String, epaAllowed: Double, ypaAllowed: Double, perfectCoverage: Double, defDisruptionRate: Double, defDisruptionEpa: Double, defNonDisruptionEpa: Double, defPressureDisruption: Double, defNonDisruptivePressure: Double, blitzRate: Double, manCovRate: Double, zoneCovRate: Double, avgSepAllowed: Double, manEpa: Double, zoneEpa: Double, pressureRate: Double, tightCov: Double, quickPres: Double, defPcpObvious: Double, attemptsFaced: Int, yacAvgAllowed: Double, adotFaced: Double, defTimeToThrow: Double, explosivePlay: Double, defPressureRhy: Double, openPct: Double, dropbacksFaced: Int, defMofEpa: Double, defTimeToPressure: Double, defBoundEpa: Double, defBoundRate: Double, defMofPct: Double, acc: Double, blockingMistakesForced: Double, defXpassRate: Double, defSackRateReg: Double, defSackRateObs: Double, epaNoQuick: Double, epaQuickPress: Double, quickPressureDelta: Double, playsY: Int, def: String, defProeAvg: Double, defYdsPlay: Double, defDriveEpa: Double, edEpa: Double, ldEpa: Double, epaPlay: Double, rushEpa: Double, passEpa: Double, defSr: Double, defRushYds: Double, defRushSr: Double, defPassSr: Double, defFunnellSuccess: Double, funnellEpa: Double, defEdsr: Double, defLdsr: Double, defExplosivePlayRate: Double, defExplosivePassRate: Double, defExplosiveRunRate: Double, defExplosivePlay: Int, defAirYards: Double, defYacAvg: Double, defQbScrambleRate: Double, defQbSackRate: Double, defAttempts: Int, defRuns: Int, defScrambleEpa: Double, defScrambleYards: Int, defFirstDownPassRate: Double) {
        self.offense = offense
        self.season2 = season2
        self.motionRate = motionRate
        self.disruptionRate = disruptionRate
        self.pressureDisruption = pressureDisruption
        self.nonDisruptivePressure = nonDisruptivePressure
        self.nonDisruptionEpa = nonDisruptionEpa
        self.perfectCoverageFaced = perfectCoverageFaced
        self.blitzRateFaced = blitzRateFaced
        self.offManEpa = offManEpa
        self.offZoneEpa = offZoneEpa
        self.pcpObvious = pcpObvious
        self.epaObvious = epaObvious
        self.avgSep = avgSep
        self.offAttempts = offAttempts
        self.offEpa = offEpa
        self.adot = adot
        self.offExplosivePlayX = offExplosivePlayX
        self.offDropbacks = offDropbacks
        self.playActionRate = playActionRate
        self.mofEpa = mofEpa
        self.mofPct = mofPct
        self.boundEpa = boundEpa
        self.boundRate = boundRate
        self.timeToThrow = timeToThrow
        self.timeToPressure = timeToPressure
        self.offAcc = offAcc
        self.offTightPct = offTightPct
        self.perfBlock = perfBlock
        self.offQuickPres = offQuickPres
        self.offSackRateReg = offSackRateReg
        self.offSackRateObs = offSackRateObs
        self.offXpassRate = offXpassRate
        self.manCovRateFaced = manCovRateFaced
        self.zoneCovRateFaced = zoneCovRateFaced
        self.offPressureRate = offPressureRate
        self.playsX = playsX
        self.offProeAvg = offProeAvg
        self.proeLead = proeLead
        self.proeTrail = proeTrail
        self.offYdsPlay = offYdsPlay
        self.offSacks = offSacks
        self.offDriveEpa = offDriveEpa
        self.offEpaPlay = offEpaPlay
        self.offRushEpa = offRushEpa
        self.offPassEpa = offPassEpa
        self.offEdEpa = offEdEpa
        self.offLdEpa = offLdEpa
        self.offSr = offSr
        self.rushSr = rushSr
        self.passSr = passSr
        self.offEdsr = offEdsr
        self.offLdsr = offLdsr
        self.offExplosivePlayRate = offExplosivePlayRate
        self.offExplosivePassRate = offExplosivePassRate
        self.offExplosiveRunRate = offExplosiveRunRate
        self.offExplosivePlayY = offExplosivePlayY
        self.offAirYards = offAirYards
        self.offYacAvg = offYacAvg
        self.offQbScrambleRate = offQbScrambleRate
        self.offQbSackRate = offQbSackRate
        self.offFirstDownPassRate = offFirstDownPassRate
        self.offAttemptsY = offAttemptsY
        self.offRuns = offRuns
        self.teamName = teamName
        self.teamId = teamId
        self.teamNick = teamNick
        self.teamConf = teamConf
        self.teamDivision = teamDivision
        self.teamColor = teamColor
        self.teamColor2 = teamColor2
        self.teamColor3 = teamColor3
        self.teamColor4 = teamColor4
        self.teamLogoWikipedia = teamLogoWikipedia
        self.teamLogoEspn = teamLogoEspn
        self.teamWordmark = teamWordmark
        self.teamConferenceLogo = teamConferenceLogo
        self.teamLeagueLogo = teamLeagueLogo
        self.season79 = season79
        self.epaAllowed = epaAllowed
        self.ypaAllowed = ypaAllowed
        self.perfectCoverage = perfectCoverage
        self.defDisruptionRate = defDisruptionRate
        self.defDisruptionEpa = defDisruptionEpa
        self.defNonDisruptionEpa = defNonDisruptionEpa
        self.defPressureDisruption = defPressureDisruption
        self.defNonDisruptivePressure = defNonDisruptivePressure
        self.blitzRate = blitzRate
        self.manCovRate = manCovRate
        self.zoneCovRate = zoneCovRate
        self.avgSepAllowed = avgSepAllowed
        self.manEpa = manEpa
        self.zoneEpa = zoneEpa
        self.pressureRate = pressureRate
        self.tightCov = tightCov
        self.quickPres = quickPres
        self.defPcpObvious = defPcpObvious
        self.attemptsFaced = attemptsFaced
        self.yacAvgAllowed = yacAvgAllowed
        self.adotFaced = adotFaced
        self.defTimeToThrow = defTimeToThrow
        self.explosivePlay = explosivePlay
        self.defPressureRhy = defPressureRhy
        self.openPct = openPct
        self.dropbacksFaced = dropbacksFaced
        self.defMofEpa = defMofEpa
        self.defTimeToPressure = defTimeToPressure
        self.defBoundEpa = defBoundEpa
        self.defBoundRate = defBoundRate
        self.defMofPct = defMofPct
        self.acc = acc
        self.blockingMistakesForced = blockingMistakesForced
        self.defXpassRate = defXpassRate
        self.defSackRateReg = defSackRateReg
        self.defSackRateObs = defSackRateObs
        self.epaNoQuick = epaNoQuick
        self.epaQuickPress = epaQuickPress
        self.quickPressureDelta = quickPressureDelta
        self.playsY = playsY
        self.def = def
        self.defProeAvg = defProeAvg
        self.defYdsPlay = defYdsPlay
        self.defDriveEpa = defDriveEpa
        self.edEpa = edEpa
        self.ldEpa = ldEpa
        self.epaPlay = epaPlay
        self.rushEpa = rushEpa
        self.passEpa = passEpa
        self.defSr = defSr
        self.defRushYds = defRushYds
        self.defRushSr = defRushSr
        self.defPassSr = defPassSr
        self.defFunnellSuccess = defFunnellSuccess
        self.funnellEpa = funnellEpa
        self.defEdsr = defEdsr
        self.defLdsr = defLdsr
        self.defExplosivePlayRate = defExplosivePlayRate
        self.defExplosivePassRate = defExplosivePassRate
        self.defExplosiveRunRate = defExplosiveRunRate
        self.defExplosivePlay = defExplosivePlay
        self.defAirYards = defAirYards
        self.defYacAvg = defYacAvg
        self.defQbScrambleRate = defQbScrambleRate
        self.defQbSackRate = defQbSackRate
        self.defAttempts = defAttempts
        self.defRuns = defRuns
        self.defScrambleEpa = defScrambleEpa
        self.defScrambleYards = defScrambleYards
        self.defFirstDownPassRate = defFirstDownPassRate
    }
}

// MARK: TeamStats convenience initializers and mutators

public extension TeamStats {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TeamStats.self, from: data)
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
        offense: String? = nil,
        season2: String? = nil,
        motionRate: Double? = nil,
        disruptionRate: Double? = nil,
        pressureDisruption: Double? = nil,
        nonDisruptivePressure: Double? = nil,
        nonDisruptionEpa: Double? = nil,
        perfectCoverageFaced: Double? = nil,
        blitzRateFaced: Double? = nil,
        offManEpa: Double? = nil,
        offZoneEpa: Double? = nil,
        pcpObvious: Double? = nil,
        epaObvious: Double? = nil,
        avgSep: Double? = nil,
        offAttempts: Int? = nil,
        offEpa: Double? = nil,
        adot: Double? = nil,
        offExplosivePlayX: Double? = nil,
        offDropbacks: Int? = nil,
        playActionRate: Double? = nil,
        mofEpa: Double? = nil,
        mofPct: Double? = nil,
        boundEpa: Double? = nil,
        boundRate: Double? = nil,
        timeToThrow: Double? = nil,
        timeToPressure: Double? = nil,
        offAcc: Double? = nil,
        offTightPct: Double? = nil,
        perfBlock: Double? = nil,
        offQuickPres: Double? = nil,
        offSackRateReg: Double? = nil,
        offSackRateObs: Double? = nil,
        offXpassRate: Double? = nil,
        manCovRateFaced: Double? = nil,
        zoneCovRateFaced: Double? = nil,
        offPressureRate: Double? = nil,
        playsX: Int? = nil,
        offProeAvg: Double? = nil,
        proeLead: Double? = nil,
        proeTrail: Double? = nil,
        offYdsPlay: Double? = nil,
        offSacks: Double? = nil,
        offDriveEpa: Int? = nil,
        offEpaPlay: Double? = nil,
        offRushEpa: Double? = nil,
        offPassEpa: Double? = nil,
        offEdEpa: Double? = nil,
        offLdEpa: Double? = nil,
        offSr: Double? = nil,
        rushSr: Double? = nil,
        passSr: Double? = nil,
        offEdsr: Double? = nil,
        offLdsr: Double? = nil,
        offExplosivePlayRate: Double? = nil,
        offExplosivePassRate: Double? = nil,
        offExplosiveRunRate: Double? = nil,
        offExplosivePlayY: Int? = nil,
        offAirYards: Double? = nil,
        offYacAvg: Double? = nil,
        offQbScrambleRate: Double? = nil,
        offQbSackRate: Double? = nil,
        offFirstDownPassRate: Double? = nil,
        offAttemptsY: Int? = nil,
        offRuns: Int? = nil,
        teamName: String? = nil,
        teamId: String? = nil,
        teamNick: String? = nil,
        teamConf: String? = nil,
        teamDivision: String? = nil,
        teamColor: String? = nil,
        teamColor2: String? = nil,
        teamColor3: String? = nil,
        teamColor4: String? = nil,
        teamLogoWikipedia: String? = nil,
        teamLogoEspn: String? = nil,
        teamWordmark: String? = nil,
        teamConferenceLogo: String? = nil,
        teamLeagueLogo: String? = nil,
        season79: String? = nil,
        epaAllowed: Double? = nil,
        ypaAllowed: Double? = nil,
        perfectCoverage: Double? = nil,
        defDisruptionRate: Double? = nil,
        defDisruptionEpa: Double? = nil,
        defNonDisruptionEpa: Double? = nil,
        defPressureDisruption: Double? = nil,
        defNonDisruptivePressure: Double? = nil,
        blitzRate: Double? = nil,
        manCovRate: Double? = nil,
        zoneCovRate: Double? = nil,
        avgSepAllowed: Double? = nil,
        manEpa: Double? = nil,
        zoneEpa: Double? = nil,
        pressureRate: Double? = nil,
        tightCov: Double? = nil,
        quickPres: Double? = nil,
        defPcpObvious: Double? = nil,
        attemptsFaced: Int? = nil,
        yacAvgAllowed: Double? = nil,
        adotFaced: Double? = nil,
        defTimeToThrow: Double? = nil,
        explosivePlay: Double? = nil,
        defPressureRhy: Double? = nil,
        openPct: Double? = nil,
        dropbacksFaced: Int? = nil,
        defMofEpa: Double? = nil,
        defTimeToPressure: Double? = nil,
        defBoundEpa: Double? = nil,
        defBoundRate: Double? = nil,
        defMofPct: Double? = nil,
        acc: Double? = nil,
        blockingMistakesForced: Double? = nil,
        defXpassRate: Double? = nil,
        defSackRateReg: Double? = nil,
        defSackRateObs: Double? = nil,
        epaNoQuick: Double? = nil,
        epaQuickPress: Double? = nil,
        quickPressureDelta: Double? = nil,
        playsY: Int? = nil,
        def: String? = nil,
        defProeAvg: Double? = nil,
        defYdsPlay: Double? = nil,
        defDriveEpa: Double? = nil,
        edEpa: Double? = nil,
        ldEpa: Double? = nil,
        epaPlay: Double? = nil,
        rushEpa: Double? = nil,
        passEpa: Double? = nil,
        defSr: Double? = nil,
        defRushYds: Double? = nil,
        defRushSr: Double? = nil,
        defPassSr: Double? = nil,
        defFunnellSuccess: Double? = nil,
        funnellEpa: Double? = nil,
        defEdsr: Double? = nil,
        defLdsr: Double? = nil,
        defExplosivePlayRate: Double? = nil,
        defExplosivePassRate: Double? = nil,
        defExplosiveRunRate: Double? = nil,
        defExplosivePlay: Int? = nil,
        defAirYards: Double? = nil,
        defYacAvg: Double? = nil,
        defQbScrambleRate: Double? = nil,
        defQbSackRate: Double? = nil,
        defAttempts: Int? = nil,
        defRuns: Int? = nil,
        defScrambleEpa: Double? = nil,
        defScrambleYards: Int? = nil,
        defFirstDownPassRate: Double? = nil
    ) -> TeamStats {
        return TeamStats(
            offense: offense ?? self.offense,
            season2: season2 ?? self.season2,
            motionRate: motionRate ?? self.motionRate,
            disruptionRate: disruptionRate ?? self.disruptionRate,
            pressureDisruption: pressureDisruption ?? self.pressureDisruption,
            nonDisruptivePressure: nonDisruptivePressure ?? self.nonDisruptivePressure,
            nonDisruptionEpa: nonDisruptionEpa ?? self.nonDisruptionEpa,
            perfectCoverageFaced: perfectCoverageFaced ?? self.perfectCoverageFaced,
            blitzRateFaced: blitzRateFaced ?? self.blitzRateFaced,
            offManEpa: offManEpa ?? self.offManEpa,
            offZoneEpa: offZoneEpa ?? self.offZoneEpa,
            pcpObvious: pcpObvious ?? self.pcpObvious,
            epaObvious: epaObvious ?? self.epaObvious,
            avgSep: avgSep ?? self.avgSep,
            offAttempts: offAttempts ?? self.offAttempts,
            offEpa: offEpa ?? self.offEpa,
            adot: adot ?? self.adot,
            offExplosivePlayX: offExplosivePlayX ?? self.offExplosivePlayX,
            offDropbacks: offDropbacks ?? self.offDropbacks,
            playActionRate: playActionRate ?? self.playActionRate,
            mofEpa: mofEpa ?? self.mofEpa,
            mofPct: mofPct ?? self.mofPct,
            boundEpa: boundEpa ?? self.boundEpa,
            boundRate: boundRate ?? self.boundRate,
            timeToThrow: timeToThrow ?? self.timeToThrow,
            timeToPressure: timeToPressure ?? self.timeToPressure,
            offAcc: offAcc ?? self.offAcc,
            offTightPct: offTightPct ?? self.offTightPct,
            perfBlock: perfBlock ?? self.perfBlock,
            offQuickPres: offQuickPres ?? self.offQuickPres,
            offSackRateReg: offSackRateReg ?? self.offSackRateReg,
            offSackRateObs: offSackRateObs ?? self.offSackRateObs,
            offXpassRate: offXpassRate ?? self.offXpassRate,
            manCovRateFaced: manCovRateFaced ?? self.manCovRateFaced,
            zoneCovRateFaced: zoneCovRateFaced ?? self.zoneCovRateFaced,
            offPressureRate: offPressureRate ?? self.offPressureRate,
            playsX: playsX ?? self.playsX,
            offProeAvg: offProeAvg ?? self.offProeAvg,
            proeLead: proeLead ?? self.proeLead,
            proeTrail: proeTrail ?? self.proeTrail,
            offYdsPlay: offYdsPlay ?? self.offYdsPlay,
            offSacks: offSacks ?? self.offSacks,
            offDriveEpa: offDriveEpa ?? self.offDriveEpa,
            offEpaPlay: offEpaPlay ?? self.offEpaPlay,
            offRushEpa: offRushEpa ?? self.offRushEpa,
            offPassEpa: offPassEpa ?? self.offPassEpa,
            offEdEpa: offEdEpa ?? self.offEdEpa,
            offLdEpa: offLdEpa ?? self.offLdEpa,
            offSr: offSr ?? self.offSr,
            rushSr: rushSr ?? self.rushSr,
            passSr: passSr ?? self.passSr,
            offEdsr: offEdsr ?? self.offEdsr,
            offLdsr: offLdsr ?? self.offLdsr,
            offExplosivePlayRate: offExplosivePlayRate ?? self.offExplosivePlayRate,
            offExplosivePassRate: offExplosivePassRate ?? self.offExplosivePassRate,
            offExplosiveRunRate: offExplosiveRunRate ?? self.offExplosiveRunRate,
            offExplosivePlayY: offExplosivePlayY ?? self.offExplosivePlayY,
            offAirYards: offAirYards ?? self.offAirYards,
            offYacAvg: offYacAvg ?? self.offYacAvg,
            offQbScrambleRate: offQbScrambleRate ?? self.offQbScrambleRate,
            offQbSackRate: offQbSackRate ?? self.offQbSackRate,
            offFirstDownPassRate: offFirstDownPassRate ?? self.offFirstDownPassRate,
            offAttemptsY: offAttemptsY ?? self.offAttemptsY,
            offRuns: offRuns ?? self.offRuns,
            teamName: teamName ?? self.teamName,
            teamId: teamId ?? self.teamId,
            teamNick: teamNick ?? self.teamNick,
            teamConf: teamConf ?? self.teamConf,
            teamDivision: teamDivision ?? self.teamDivision,
            teamColor: teamColor ?? self.teamColor,
            teamColor2: teamColor2 ?? self.teamColor2,
            teamColor3: teamColor3 ?? self.teamColor3,
            teamColor4: teamColor4 ?? self.teamColor4,
            teamLogoWikipedia: teamLogoWikipedia ?? self.teamLogoWikipedia,
            teamLogoEspn: teamLogoEspn ?? self.teamLogoEspn,
            teamWordmark: teamWordmark ?? self.teamWordmark,
            teamConferenceLogo: teamConferenceLogo ?? self.teamConferenceLogo,
            teamLeagueLogo: teamLeagueLogo ?? self.teamLeagueLogo,
            season79: season79 ?? self.season79,
            epaAllowed: epaAllowed ?? self.epaAllowed,
            ypaAllowed: ypaAllowed ?? self.ypaAllowed,
            perfectCoverage: perfectCoverage ?? self.perfectCoverage,
            defDisruptionRate: defDisruptionRate ?? self.defDisruptionRate,
            defDisruptionEpa: defDisruptionEpa ?? self.defDisruptionEpa,
            defNonDisruptionEpa: defNonDisruptionEpa ?? self.defNonDisruptionEpa,
            defPressureDisruption: defPressureDisruption ?? self.defPressureDisruption,
            defNonDisruptivePressure: defNonDisruptivePressure ?? self.defNonDisruptivePressure,
            blitzRate: blitzRate ?? self.blitzRate,
            manCovRate: manCovRate ?? self.manCovRate,
            zoneCovRate: zoneCovRate ?? self.zoneCovRate,
            avgSepAllowed: avgSepAllowed ?? self.avgSepAllowed,
            manEpa: manEpa ?? self.manEpa,
            zoneEpa: zoneEpa ?? self.zoneEpa,
            pressureRate: pressureRate ?? self.pressureRate,
            tightCov: tightCov ?? self.tightCov,
            quickPres: quickPres ?? self.quickPres,
            defPcpObvious: defPcpObvious ?? self.defPcpObvious,
            attemptsFaced: attemptsFaced ?? self.attemptsFaced,
            yacAvgAllowed: yacAvgAllowed ?? self.yacAvgAllowed,
            adotFaced: adotFaced ?? self.adotFaced,
            defTimeToThrow: defTimeToThrow ?? self.defTimeToThrow,
            explosivePlay: explosivePlay ?? self.explosivePlay,
            defPressureRhy: defPressureRhy ?? self.defPressureRhy,
            openPct: openPct ?? self.openPct,
            dropbacksFaced: dropbacksFaced ?? self.dropbacksFaced,
            defMofEpa: defMofEpa ?? self.defMofEpa,
            defTimeToPressure: defTimeToPressure ?? self.defTimeToPressure,
            defBoundEpa: defBoundEpa ?? self.defBoundEpa,
            defBoundRate: defBoundRate ?? self.defBoundRate,
            defMofPct: defMofPct ?? self.defMofPct,
            acc: acc ?? self.acc,
            blockingMistakesForced: blockingMistakesForced ?? self.blockingMistakesForced,
            defXpassRate: defXpassRate ?? self.defXpassRate,
            defSackRateReg: defSackRateReg ?? self.defSackRateReg,
            defSackRateObs: defSackRateObs ?? self.defSackRateObs,
            epaNoQuick: epaNoQuick ?? self.epaNoQuick,
            epaQuickPress: epaQuickPress ?? self.epaQuickPress,
            quickPressureDelta: quickPressureDelta ?? self.quickPressureDelta,
            playsY: playsY ?? self.playsY,
            def: def ?? self.def,
            defProeAvg: defProeAvg ?? self.defProeAvg,
            defYdsPlay: defYdsPlay ?? self.defYdsPlay,
            defDriveEpa: defDriveEpa ?? self.defDriveEpa,
            edEpa: edEpa ?? self.edEpa,
            ldEpa: ldEpa ?? self.ldEpa,
            epaPlay: epaPlay ?? self.epaPlay,
            rushEpa: rushEpa ?? self.rushEpa,
            passEpa: passEpa ?? self.passEpa,
            defSr: defSr ?? self.defSr,
            defRushYds: defRushYds ?? self.defRushYds,
            defRushSr: defRushSr ?? self.defRushSr,
            defPassSr: defPassSr ?? self.defPassSr,
            defFunnellSuccess: defFunnellSuccess ?? self.defFunnellSuccess,
            funnellEpa: funnellEpa ?? self.funnellEpa,
            defEdsr: defEdsr ?? self.defEdsr,
            defLdsr: defLdsr ?? self.defLdsr,
            defExplosivePlayRate: defExplosivePlayRate ?? self.defExplosivePlayRate,
            defExplosivePassRate: defExplosivePassRate ?? self.defExplosivePassRate,
            defExplosiveRunRate: defExplosiveRunRate ?? self.defExplosiveRunRate,
            defExplosivePlay: defExplosivePlay ?? self.defExplosivePlay,
            defAirYards: defAirYards ?? self.defAirYards,
            defYacAvg: defYacAvg ?? self.defYacAvg,
            defQbScrambleRate: defQbScrambleRate ?? self.defQbScrambleRate,
            defQbSackRate: defQbSackRate ?? self.defQbSackRate,
            defAttempts: defAttempts ?? self.defAttempts,
            defRuns: defRuns ?? self.defRuns,
            defScrambleEpa: defScrambleEpa ?? self.defScrambleEpa,
            defScrambleYards: defScrambleYards ?? self.defScrambleYards,
            defFirstDownPassRate: defFirstDownPassRate ?? self.defFirstDownPassRate
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
