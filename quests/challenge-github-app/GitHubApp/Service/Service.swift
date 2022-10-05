//
//  Service.swift
//  GitHubApp
//
//  Created by Rodrigo Borges on 30/09/21.
//

import Foundation

enum ServiceError: Error {
    case badUrl
    case taskError
    case responseError
    case dataError
    case parsedError
    case invalidStatusCode(Int)
    
    var localizedDescription: String {
        switch self {
            
        case .badUrl:
            return "url invalida"
        case .taskError:
            return "task invalida"
        case .responseError:
            return "response invalido"
        case .dataError:
            return "data invalida"
        case .parsedError:
            return "parsed invalido"
        case .invalidStatusCode(let statusCode):
            return "status code invalido \(statusCode)"
        }
    }
}

struct Service {
    
    let urlSession: URLSession
    
    init(urlSession: URLSession = .shared){
        self.urlSession = urlSession
    }
    
    func fetchList(_ user: String, _ onComplete: @escaping (Result<[Repository], ServiceError>) -> Void) {
        
        guard let url = URL(string: "https://api.github.com/users/\(user)/repos") else {
            return onComplete(.failure(.badUrl))
        }
        
        let task = urlSession.dataTask(with: url) { data, response, error in
            if error != nil {
                return onComplete(.failure(.taskError))
            }
            
            guard let response = response as? HTTPURLResponse else {
                return onComplete(.failure(.responseError))
            }
            
            if !(200...299 ~= response.statusCode) {
                return onComplete(.failure(.invalidStatusCode(response.statusCode)))
            }
            
            guard let data = data else {
                return onComplete(.failure(.dataError))
            }
            
            do {
                let result = try JSONDecoder().decode([Repository].self, from: data)
                onComplete(.success(result))
            } catch {
                return onComplete(.failure(.parsedError))
            }
        }
        task.resume()
    }
}
