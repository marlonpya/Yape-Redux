//
//  FoodRepository.swift
//  Yape Redux
//
//  Created by marlon arteaga on 11/11/23.
//

import Foundation

enum FoodError: Error {
    case invalidURL
    case decodingError
    case noData
}

protocol FoodRepository {
    
    func getFoods(completion: @escaping (Result<[Food],FoodError>) -> Void)
    
}
