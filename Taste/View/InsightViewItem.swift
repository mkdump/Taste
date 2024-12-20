//
//  InsightViewItem.swift
//  Taste
//
//  Created by Mitch Vitrano on 10/19/24.
//

import SwiftUI

struct InsightViewItem: View {
    let item: NarrativeInsight
    @State var dataPoints: [NarrativeDataPoint]
    
    var header: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(getImageName(team: item.game.awayTeam))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .frame(width: 20, height: 20)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    Text(item.game.awayTeamName!).font(.system(size: 14)).bold()
                    Text(" @ ").font(.system(size: 12)).bold()
                    
                    Image(getImageName(team: item.game.homeTeam))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .frame(width: 20, height: 20)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    Text(item.game.homeTeamName!).font(.system(size: 14)).bold()
                    
                    Spacer()
                }.padding(.init(top: 0, leading: 14, bottom: 0, trailing: 14))
                
                HStack {
                    Text(item.headline + "(" + String(item.id) + ")").font(.system(size: 22)).bold().padding(.leading)
                    Spacer()
                    Image("graph-up")
                }
                HStack {
                    Text(item.text).font(.system(size: 16)).padding(.init(top: 0, leading: 14, bottom: 10, trailing: 2))
                    Spacer()
                }
            }
            Spacer()
        }
    }
    
    var actionButtons: some View {
        
        HStack {
            Image("star-filled")
                .renderingMode(.template)
                .foregroundColor(Color(.label))
                .onTapGesture {
                    print("handle like toggle")
                }
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 1))
            Text("16").font(.system(size: 12))
            
            Image("heart-filled")
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 1))
            Text("110").font(.system(size: 12))
            
            Image("bell-fill")
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 1))
            Text("233").font(.system(size: 12))
             
            Spacer()
            Text("Swipe to Start Narrative").font(.system(size: 12))
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 5))
        }
        .font(.system(size: 16, weight: .light))
        .padding([.top, .bottom])
        .fixedSize(horizontal: false, vertical: true)
    }
    
    var body: some View {
        
        VStack{
            header
            ChartView(item: item, dataPoints: dataPoints)
                .aspectRatio(contentMode: .fit)
                .padding(.init(top: 10, leading: 14, bottom: 10, trailing: 14))
            actionButtons

        }
        .onAppear(){
            fetchRemoteData()
        }
    }
    
    private func fetchRemoteData() {
        let url = URL(string: "http://localhost:3000/scatterplot?insightid=" + String(4979))!
            var request = URLRequest(url: url)
            request.httpMethod = "GET"  // optional
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
            let task = URLSession.shared.dataTask(with: request){ data, response, error in
                if let error = error {
                    print("Error while fetching data:", error)
                    return
                }

                guard let data = data else {
                    return
                }

                do {
                    let insightDataPoints = try JSONDecoder().decode([InsightDataPoint].self, from: data)
                    
                    var _dataPoints = [NarrativeDataPoint]()
                    var index = 0
                    insightDataPoints.forEach { insight in
                        
                        let newDataPoint = NarrativeDataPoint(id: index, xValue: Float(insight.xValue), xCode: insight.xCode, xText: insight.xText, xPercentile: Float(insight.xPercentile), xDefinition: insight.xDefinition, yValue: Float(insight.yValue), yCode: insight.yCode, yText: insight.yText, yPercentile: Float(insight.yPercentile), yDefinition: insight.yDefinition, color: Color.black)
                        index = index + 1
                        
                        _dataPoints.append(newDataPoint)
                    }
                    
                    // Assigning the data to the array
                    self.dataPoints = _dataPoints
                } catch let jsonError {
                    print("Failed to decode json", jsonError)
                }
            }

            task.resume()
        }
    
    func getImageName(team: NFLTeam) -> String {
        var imageName: String = ""
        
        switch team {
        case .Arizona: imageName = "arizona-cardinals-logo"
        case .Atlanta: imageName = "atlanta-falcons-logo"
        case .Baltimore: imageName = "baltimore-ravens-logo"
        case .Buffalo: imageName = "buffalo-bills-logo"
        case .Carolina: imageName = "carolina-panthers-logo"
        case .Chicago: imageName = "chicago-bears-logo"
        case .Cincinnati: imageName = "cincinnati-bengals-logo"
        case .Cleveland: imageName = "cleveland-browns-logo"
        case .Dallas:
            imageName = "dallas-cowboys-logo"
        case .Denver:
            imageName = "denver-broncos-logo"
        case .Detroit:
            imageName = "detroit-lions-logo"
        case .GreenBay:
            imageName = "green-bay-packers-logo"
        case .Houston:
            imageName = "houston-texans-logo"
        case .Indianapolis:
            imageName = "indianapolis-colts-logo"
        case .Jacksonville:
            imageName = "jacksonville-jaguars-logo"
        case .KansasCity:
            imageName = "kansas-city-chiefs-logo"
        case .LosAngelesChargers:
            imageName = "los-angeles-chargers-logo"
        case .LosAngelesRams:
            imageName = "los-angeles-rams-logo"
        case .Miami:
            imageName = "miami-dolphins-logo"
        case .Minnesota:
            imageName = "minnesota-vikings-logo"
        case .NewOrleans:
            imageName = "new-orleans-saints-logo"
        case .NewYorkGiants:
            imageName = "new-york-giants-logo"
        case .NewYorkJets:
            imageName = "new-york-jets-logo"
        case .LasVegas:
            imageName = "oakland-raiders-logo"
        case .Philadelphia:
            imageName = "philadelphia-eagles-logo"
        case .Pittsburgh:
            imageName = "pittsburgh-steelers-logo"
        case .SanFrancisco:
            imageName = "san-francisco-49ers-logo"
        case .Seattle:
            imageName = "seattle-seahawks-logo"
        case .TampaBay:
            imageName = "tampa-bay-buccaneers-logo"
        case .Tennessee:
            imageName = "tennessee-titans-logo"
        case .Washington:
            imageName = "washington-redskins-logo"
        }
        
        return imageName
    }
}
