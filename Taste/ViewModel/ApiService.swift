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
}
