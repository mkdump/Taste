//
//  FeedItemCell.swift
//  Taste
//
//  Created by Mitch Vitrano on 9/26/24.
//

import SwiftUI

struct FeedItemCell: View {
    let item: FeedItem
    
    var header: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.gameTitle).font(.system(size: 30)).bold()
                HStack {
                    Image(getImageName(team: item.game.homeTeam))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipped()
                        .frame(width: 50, height: 50)
                        //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                    
                    Text(" v.").font(.system(size: 16)).bold()
                    
                    Image(getImageName(team: item.game.awayTeam))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .frame(width: 50, height: 50)
                        //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                }
            }
            Spacer()
        }
    }
    
    var actionButtons: some View {
        
        HStack {
            Image(systemName: "heart")
                .renderingMode(.template)
                .foregroundColor(Color(.label))
                .onTapGesture {
                    print("handle like toggle")
                }
                .padding(.init(top: 0, leading: 12, bottom: 0, trailing: 8))
            
            Image(systemName:  "bubble.left")
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 8))
            
            Image(systemName: "paperplane")
                .padding(.init(top: 0, leading: 8, bottom: 0, trailing: 8))
            
            Spacer()
        }
        .font(.system(size: 16, weight: .light))
        .padding([.top, .bottom])
        .fixedSize(horizontal: false, vertical: true)
    }
    
    var body: some View {
        
        VStack{
            header
            
            Image("Joe_Thomas")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipped()
            
            actionButtons

        }
    }
    
    public func getNFLTeam(team: String) -> NFLTeam {
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
