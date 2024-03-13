//
//  MovieListUpcomingResponse.swift
//  LumxTest
//
//  Created by Fernando on 07/03/24.
//

import Foundation

struct MovieListUpcomingResponse: Codable {
    let results: [MovieModel]
    let page: Int
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
