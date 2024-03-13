//
//  MovieListRepository.swift
//  LumxTest
//
//  Created by Fernando on 07/03/24.
//

import Foundation

struct MovieListRepository {
    
    static func fetchPopularMovieList(request: MovieListPopularRequest, completion: @escaping (MovieListPopularResponse?, Error?) -> Void) {
        LumxTestService.getPopularMovies(request: request) { response in
            guard let data = response.data else {
                completion(nil, response.error)
                return
            }
            let model = try? JSONDecoder().decode(MovieListPopularResponse.self, from: data)
            completion(model, nil)
        }
    }
    
    static func fetchUpcomingMovieList(request: MovieListUpcomingRequest, completion: @escaping (MovieListUpcomingResponse?, Error?) -> Void) {
        LumxTestService.getUpcomingMovies(request: request) { response in
            guard let data = response.data else {
                completion(nil, response.error)
                return
            }
            let model = try? JSONDecoder().decode(MovieListUpcomingResponse.self, from: data)
            completion(model, nil)
        }
    }
}
