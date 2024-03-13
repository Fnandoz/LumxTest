//
//  LumxTestService.swift
//  LumxTest
//
//  Created by Fernando on 07/03/24.
//

import Alamofire
import Foundation

class LumxTestService {
    
    static func getUpcomingMovies(request: MovieListUpcomingRequest, completion: @escaping (AFDataResponse<Data?>) -> ()) {
        let service: MobileService = .getUpcomingMovies(request)
        AF.request(service.url, method: .get, headers: service.headers)
            .validate()
            .response(completionHandler: completion)
    }
    
    static func getPopularMovies(request: MovieListPopularRequest, completion: @escaping (AFDataResponse<Data?>) -> ()) {
        let service: MobileService = .getPopularMovies(request)
        AF.request(service.url, method: service.method, headers: service.headers)
            .validate()
            .response(completionHandler: completion)
    }
    
    static func getMovie(request: MovieDetailsRequest, completion: @escaping (AFDataResponse<Data?>) -> ()) {
        let service: MobileService = .getMovie(request)
        AF.request(service.url, method: service.method, headers: service.headers)
            .validate()
            .response(completionHandler: completion)
    }
}

