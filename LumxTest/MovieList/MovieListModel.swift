//
//  MovieListModel.swift
//  LumxTest
//
//  Created by Fernando on 07/03/24.
//

import Foundation

class MovieListModel {
    
    func fetchPopularMovieList(completion: @escaping (([MovieModel]?, Error?) -> Void)) {
        MovieListRepository.fetchPopularMovieList(request: MovieListPopularRequest()) { movieList, error in
            completion(movieList?.results, error)
        }
    }
    
    func fetchUpcomingMovieList(completion: @escaping (([MovieModel]?, Error?) -> Void)) {
        MovieListRepository.fetchUpcomingMovieList(request: MovieListUpcomingRequest()) { movieList, error in
            completion(movieList?.results, error)
        }
    }
    
}
