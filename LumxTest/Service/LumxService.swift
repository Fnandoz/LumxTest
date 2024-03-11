//
//  LumxTestService.swift
//  LumxTest
//
//  Created by Fernando on 07/03/24.
//

import Alamofire
import Foundation

class LumxTestService {
    
    static func getUpcomingMovies(completion: @escaping (AFDataResponse<Data?>) -> ()) {
        let service: MobileService = .getUpcomingMovies
        AF.request(service.url, method: service.method)
            .validate()
            .response(completionHandler: completion)
    }
}

