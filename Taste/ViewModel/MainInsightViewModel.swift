//
//  InsightViewModel.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/19/24.
//

import Foundation
import Combine

class MainInsightViewModel: ObservableObject {
    @Published var items = [NarrativeInsight]()
    
    enum ViewState {
        case START
        case LOADING
        case SUCCESS(items: [NarrativeInsight])
        case FAILURE(error: String)
    }
    
    @Published var currentState: ViewState = .START
        private var cancelables = Set<AnyCancellable>()
    
    init() {
        loadInsights()
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
    
    func getNextInsight() -> NarrativeInsight {
        let index = Int.random(in: 0..<items.count)
        
        return self.items[index]
    }
    
    func getInitialInsights() -> [NarrativeInsight] {
        
        var insights = [NarrativeInsight]()
        
        for i in 0..<items.count
        {
            var insight = getNextInsight()
            insight.position = i
            // pagedItems.append(insight)
            insights.append(insight)
            if i > 10 { break }
        }
        
        return insights
    }
    
    func getInsightDataForScatterPlot(insightId: Int) -> [InsightDataPoint] {
        var insightDataPoints = [InsightDataPoint]()
        APIService.shared.getDataPointsForScatterPlot(insightId: insightId)
            .sink { completion in
                switch completion {
                case .finished:
                    print("Execution Finihsed.")
                case .failure(let error):
                    self.currentState = .FAILURE(error: error.localizedDescription)
                }
            } receiveValue: { dataPoints in
                
                insightDataPoints = dataPoints
                
            }.store(in: &cancelables)
            
        return insightDataPoints
    }
    
    func loadInsights() {
        self.currentState = .LOADING
            APIService.shared.getInsights()
                    .sink { completion in
                        switch completion {
                        case .finished:
                            print("Execution Finihsed.")
                        case .failure(let error):
                            self.currentState = .FAILURE(error: error.localizedDescription)
                        }
                    } receiveValue: { items in
                        var insights = [NarrativeInsight]()
                        var index = 0
                        items.forEach { insight in
                            let homeTeam = self.getNFLTeam(team: insight.homeTeamCode!)
                            let awayTeam = self.getNFLTeam(team: insight.awayTeamCode!)
                            
                            let item1 = NarrativeInsight(id: insight.id, position: index, insightType: InsightType(rawValue: insight.type) ?? InsightType.QbEpaBlitz, insightDesc: insight.description, insightRubric: insight.rubric ?? "", headline: insight.headline , text: insight.text, predictivePower: Double(insight.predictivePower), teamId: 32, players: [2022], gameTitle: insight.gameTitle, game: Game(homeTeam: homeTeam, homeTeamName: self.getTeamName(team: homeTeam), awayTeam: awayTeam, awayTeamName: self.getTeamName(team: awayTeam)), data: [], compellingScore: Float(insight.compellingScore), embedding: "", bets: Array())
                            
                            insights.append(item1)
                            
                            index = index + 1
                        }
                        
                        self.currentState = .SUCCESS(items: insights)
                    }.store(in: &cancelables)
    }
    
    func getInsights() {
        let urlString = "http://localhost:3000/insights?week=16"
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
                               let insights = try? decoder.decode([APIInsight].self, from: data) {
                               
                                var index = 0
                                for insight in insights {
                            
                                    let homeTeam = self.getNFLTeam(team: insight.homeTeamCode!)
                                    let awayTeam = self.getNFLTeam(team: insight.awayTeamCode!)
                                    
                                    let item1 = NarrativeInsight(id: insight.id, position: index, insightType: InsightType(rawValue: insight.type) ?? InsightType.QbEpaBlitz, insightDesc: insight.description, insightRubric: insight.rubric ?? "", headline: insight.headline , text: insight.text, predictivePower: Double(insight.predictivePower), teamId: 32, players: [2022], gameTitle: insight.gameTitle, game: Game(homeTeam: homeTeam, homeTeamName: self.getTeamName(team: homeTeam), awayTeam: awayTeam, awayTeamName: self.getTeamName(team: awayTeam)), data: [], compellingScore: Float(insight.compellingScore), embedding: "", bets: Array())
                                    
                                    self.items.append(item1)
                                    
                                    index = index + 1
                                }
                            }
                            else {
                                //TODO: Handle Error
                              
                            }
                        }
                    }
                }
                .resume()
        }
    }
}
