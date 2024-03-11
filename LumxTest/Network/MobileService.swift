//
//  MobileService.swift
//  LumxTest
//
//  Created by Fernando on 08/03/24.
//
import Foundation
import Alamofire

enum MobileService {
    case getUpcomingMovies(_ request: MovieListUpcomingRequest)
    case getPopularMovies(_ request: MovieListPopularRequest)
    case getMovie(_ request: MovieDetailsRequest)
}

extension MobileService {
    var baseUrl: String {
        return "https://api.themoviedb.org/3/"
    }
    
    var path: String {
        switch self {
        case .getPopularMovies: return "movie/popular"
        case .getUpcomingMovies: return "movie/upcoming"
        case .getMovie: return "movie/"
        }
    }
    
    var url: URL {
        let stringUrl = "\(baseUrl)\(path)"
        return URL(string: stringUrl)!
    }
    
    var method: HTTPMethod {
        switch self {
            case .getUpcomingMovies: return .get
            case .getPopularMovies: return .get
            case .getMovie: return .get
        }
    }
    
    var headers: HTTPHeaders {
        return [
            .accept("application/json"),
            .authorization(bearerToken: "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1N2UwYjRlYWE0MzhjNzZiYzg1MDM5MDJiMzZiMWZlMSIsInN1YiI6IjVkODE3MmY4NWMwNzFiMDAyNTRhNzMwMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.38pGbSm6SEePYKkCf6Diw9iU67uk0JYI7F2dvF4HmxA")
        ]
    }
}
