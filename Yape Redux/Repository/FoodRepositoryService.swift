//
//  FoodRepositoryService.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import Foundation


final class FoodRepositoryService: FoodRepository {
    static let shared = FoodRepositoryService()
    
    private init () {}
    
    func getFoods(completion: @escaping (Result<[Food], FoodError>) -> Void) {
        guard let moviesURL = URL(string: Constant.FOODS_URL) else {
            completion(.failure(.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: moviesURL) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(.failure(.noData))
                return
            }
            
            let foodsResponse = try? JSONDecoder().decode([Food].self, from: data)
            if let foodsResponse = foodsResponse {
                print(foodsResponse)
                completion(.success(foodsResponse))
            } else {
                completion(.failure(.decodingError))
            }
            
        }.resume()
    }
    
    
}
