//
//  NetworkService.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 05.09.2021.
//

import Moya
import Foundation

protocol NetworkServiceProtocol {
    var provider: MoyaProvider<API> { get }
    
    func fetchCategories(completion: @escaping (Result<CategoryStack, Error>) -> ())
    func fetchDrinks(for category: String)
}

class NetworkService: NetworkServiceProtocol {
    var provider = MoyaProvider<API>()
    
    func fetchCategories(completion: @escaping (Result<CategoryStack, Error>) -> ()) {
        provider.request(.getCategories) { result in
            switch result {
            case .success(let response):
                do {
                    let results = try JSONDecoder().decode(CategoryStack.self, from: response.data)
                    completion(.success(results))
                } catch {
                    completion(.failure(error))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    func fetchDrinks(for category: String) {
        print(category)
    }
}
