//
//  MobileServiceTest.swift
//  LumxTestTests
//
//  Created by Fernando on 11/03/24.
//

import XCTest
@testable import LumxTest

final class MobileServiceTest: XCTestCase {

    func testPopularMovieListUrlAndMethod() throws {
        // give:
        let service = MobileService.getPopularMovies(MovieListPopularRequest())
        
        // then:
        XCTAssertEqual(service.url, URL(string: "https://api.themoviedb.org/3/movie/popular")!)
        XCTAssertEqual(service.method, .get)
        
        
    }

}
