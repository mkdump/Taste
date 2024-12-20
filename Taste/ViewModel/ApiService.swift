//
//  ApiService.swift
//  Taste
//
//  Created by Mitch Vitrano on 12/18/24.
//
import Foundation
import Combine

class APIService {
    
    static let shared = APIService()
    
    func getInsights() -> AnyPublisher<[APIInsight], Error> {
        guard let url = URL(string: "http://localhost:3000/insights?week=16") else {
            return Fail(error: "Unable to generate url" as! Error).eraseToAnyPublisher()
        }
        return Future { promise in
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                DispatchQueue.main.async {
                    do {
                        guard let data = data else {
                            return promise(.failure("Something went wrong" as! Error))
                        }
                        let insights = try JSONDecoder().decode([APIInsight].self, from: data)
                        return promise(.success(insights))
                    } catch let error {
                        return promise(.failure(error))
                    }
                }
            }.resume()
        }.eraseToAnyPublisher()
    }
    
    func getDataPointsForScatterPlot(insightId: Int) -> AnyPublisher<[InsightDataPoint], Error> {
        guard let url = URL(string: "http://localhost:3000/scatterplot?insightid=" + String(insightId)) else {
            return Fail(error: "Unable to generate url" as! Error).eraseToAnyPublisher()
        }
        return Future { promise in
            URLSession.shared.dataTask(with: url) { (data, _, _) in
                DispatchQueue.main.async {
                    do {
                        guard let data = data else {
                            return promise(.failure("Something went wrong" as! Error))
                        }
                        print(data)
                        let dataPoints = try JSONDecoder().decode([InsightDataPoint].self, from: data)
                        return promise(.success(dataPoints))
                    } catch let error {
                        print(error)
                        return promise(.failure(error))
                    }
                }
            }.resume()
        }.eraseToAnyPublisher()
    }
}
