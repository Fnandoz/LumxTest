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
    var baseUrl: URL {
        return URL(string: "")!
    }
    
    var path: String {
        switch self {
        case .getPopularMovies: return ""
        case .getUpcomingMovies: return ""
        case .getMovie: return ""
        }
    }
    
    var url: URL {
        return baseUrl.appendingPathExtension(self.path)
    }
    
    var method: HTTPMethod {
        switch self {
            case .getUpcomingMovies: return .get
            case .getPopularMovies: return .get
            case .getMovie: return .get
        }
    }
}
