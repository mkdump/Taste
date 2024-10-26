//
//  InsightViewModel.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/19/24.
//

import Foundation

class InsightViewModel: ObservableObject {
    @Published var items = [NarrativeInsight]()
    
    init() {
        getInsights()
    }
    
    func getTeamName(team: NFLTeam) -> String {
        var imageName: String = ""
        
        switch team {
        case .Arizona: imageName = "Arizona Cardinals"
        case .Atlanta: imageName = "Atlanta Falcons"
        case .Baltimore: imageName = "Baltimore Ravens"
        case .Buffalo: imageName = "Buffalo Bills"
        case .Carolina: imageName = "Carolina Panthers"
        case .Chicago: imageName = "Chicago Bears"
        case .Cincinnati: imageName = "Cincinnati"
        case .Cleveland: imageName = "Cleveland Browns"
        case .Dallas:
            imageName = "Dallas Cowboys"
        case .Denver:
            imageName = "Denver Broncos"
        case .Detroit:
            imageName = "Detroit Lions"
        case .GreenBay:
            imageName = "Green Bay Packers"
        case .Houston:
            imageName = "Houston Texans"
        case .Indianapolis:
            imageName = "Indianapolis Colts"
        case .Jacksonville:
            imageName = "Jacksonville Jaguars"
        case .KansasCity:
            imageName = "Kansas City Cheifs"
        case .LosAngelesChargers:
            imageName = "LA Chargers"
        case .LosAngelesRams:
            imageName = "LA Rams"
        case .Miami:
            imageName = "Miami Dolphins"
        case .Minnesota:
            imageName = "Minnesota Vikings"
        case .NewOrleans:
            imageName = "New Orleans Saints"
        case .NewYorkGiants:
            imageName = "NY Giants"
        case .NewYorkJets:
            imageName = "NY Jets"
        case .LasVegas:
            imageName = "Oakland Raiders"
        case .Philadelphia:
            imageName = "Philadelphia Eagles"
        case .Pittsburgh:
            imageName = "Pittsburgh Steelers"
        case .SanFrancisco:
            imageName = "SF 49ers"
        case .Seattle:
            imageName = "Seattle Mariners"
        case .TampaBay:
            imageName = "Tampa Bay Bucs"
        case .Tennessee:
            imageName = "Tennessee Titans"
        case .Washington:
            imageName = "Washington Commanders"
        }
        
        return imageName
    }
    
    func getNFLTeam(team: String) -> NFLTeam {
        var nflTeam: NFLTeam = .Arizona
        
        switch team {
        
        case "ARI": nflTeam = .Arizona
        case "ATL": nflTeam = .Atlanta
        case "BAL": nflTeam = .Baltimore
        case "BUF": nflTeam = .Buffalo
        case "CAR": nflTeam = .Carolina
        case "CHI": nflTeam = .Chicago
        case "CIN": nflTeam = .Cincinnati
        case "CLE": nflTeam = .Cleveland
        case "DAL": nflTeam = .Dallas
        case "DEN": nflTeam = .Denver
        case "DET": nflTeam = .Detroit
        case "GB": nflTeam = .GreenBay
        case "HOU": nflTeam = .Houston
        case "IND": nflTeam = .Indianapolis
        case "JAX": nflTeam = .Jacksonville
        case "KC": nflTeam = .KansasCity
        case "LV": nflTeam = .LasVegas
        case "LAC": nflTeam = .LosAngelesChargers
        case "LA": nflTeam = .LosAngelesRams
        case "MIA": nflTeam = .Miami
        case "MIN": nflTeam = .Minnesota
        case "NO": nflTeam = .NewOrleans
        case "NYG": nflTeam = .NewYorkGiants
        case "NYJ": nflTeam = .NewYorkJets
        case "PHI": nflTeam = .Philadelphia
        case "PIT": nflTeam = .Pittsburgh
        case "SF": nflTeam = .SanFrancisco
        case "SEA": nflTeam = .Seattle
        case "TB": nflTeam = .TampaBay
        case "TEN": nflTeam = .Tennessee
        case "WAS": nflTeam = .Washington
        default: nflTeam = .Arizona
        }
        
        return nflTeam
    }
    
    func getInsights() {
        let urlString = "http://localhost:3000/insights"
        if let url = URL(string: urlString) {
            
            URLSession
                .shared
                .dataTask(with: url) { data, response, error in
                        
                    DispatchQueue.main.async {
                        
                        print("got to the call")
                        
                        if let error = error {
                            // TODO: Handle Error
                            print(error)
                        } else {
                            
                            print("got a response")
                            let decoder = JSONDecoder()
                            
                            if let data = data,
                               let qbInsights = try? decoder.decode([QbEpaBlitzAgainstDefBlitz].self, from: data) {
                            
                                let insights = qbInsights;
                                
                                var index = 0
                                var dataPoints: [InsightDataPoint] = []
                                var dataIndex = 0
                                
                                for dataInsight in qbInsights {
                                    let xText = dataInsight.passerName
                                    let yText = dataInsight.defense
                                    
                                    let dataPoint = InsightDataPoint(id: dataIndex, xValue: Float(dataInsight.blitzEpa), xCode: "BLITZ_EPA", xText: xText, xPercentile: Float(dataInsight.blitzEpaPercentile), xDefinition: "Blitz EPA", yValue: Float(dataInsight.blitzRate), yCode: "BLITZ_RATE", yText: yText, yPercentile: Float(dataInsight.blitzRatePercentile), yDefinition: "Blitz Rate", color: .blue)
                               
                                    dataPoints.append(dataPoint)
                                    dataIndex = dataIndex + 1
                                }
                                
                                for insight in insights {
                            
                                    let insightType = InsightType.QbEpaBlitz
                                    
                                    let insightDesc = "QB effiiciency against the blitz vs defense blitz rate"
                                    let insightRubric = "Compare QB's EPA per play against the blitz to the defense's blitz rate"
                                    let insightHeadline = "\(insight.passerName) is elite against the Blitz"
                                    let insightText = "\(insight.passerName) has a " + String(format: "%.2f", insight.blitzEpa) + " EPA Rating against the Blitz, while the \(insight.defense) defense has a Blitz rate (" + String(format: "%.2f", insight.blitzRate) + ") at near the top of the league"
                                    let gameTitle = "\(insight.offense) v. \(insight.defense)"
                                    
                                    let homeTeam = self.getNFLTeam(team: insight.offense)
                                    let awayTeam = self.getNFLTeam(team: insight.defense)
                                    
                                    
                                    let xText = insight.passerName
                                    let yText = insight.defense
                                    
                                    let dataPoint = InsightDataPoint(id: 3, xValue: Float(insight.blitzEpa), xCode: "BLITZ_EPA", xText: xText, xPercentile: Float(insight.blitzEpaPercentile), xDefinition: "Blitz EPA", yValue: Float(insight.blitzRate), yCode: "BLITZ_RATE", yText: yText, yPercentile: Float(insight.blitzRatePercentile), yDefinition: "Blitz Rate", color: .orange)
                                    
                                    
                                    let item1 = NarrativeInsight(id: index, insightType: insightType, insightDesc: insightDesc, insightRubric: insightRubric, headline: insightHeadline , text: insightText, predictivePower: insight.predictivePower, teamId: 32, players: [2022], gameTitle: gameTitle, game: Game(homeTeam: homeTeam, homeTeamName: self.getTeamName(team: homeTeam), awayTeam: awayTeam, awayTeamName: self.getTeamName(team: awayTeam)), data: dataPoints, dataPoint: dataPoint, compellingScore: 0.88, embedding: "", bets: Array())
                                    
                                    self.items.append(item1)
                                    
                                    index = index + 1
                                }
                            } else {
                                //TODO: Handle Error
                                print ("got an error")
                            }
                        }
                    }
                }
                .resume()
        }
    }
}
