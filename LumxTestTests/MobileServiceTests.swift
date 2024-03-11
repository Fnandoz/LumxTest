//
//  MobileServiceTests.swift
//  LumxTestTests
//
//  Created by Fernando on 11/03/24.
//

import XCTest
@testable import LumxTest

final class MobileServiceTests: XCTestCase {

    func testPopularMovieListUrlAndMethod() throws {
        // given:
        let service: MobileService
        
        // when
        service = .getPopularMovies(MovieListPopularRequest())
        
        // then:
        XCTAssertEqual(service.url, URL(string: "https://api.themoviedb.org/3/movie/popular")!)
        XCTAssertEqual(service.method, .get)
        
    }
    
    func testUpcomingMovieListUrlAndMethod() throws {
        // given:
        let service = MobileService.getUpcomingMovies(MovieListUpcomingRequest())
        
        // then:
        XCTAssertEqual(service.url, URL(string: "https://api.themoviedb.org/3/movie/upcoming")!)
        XCTAssertEqual(service.method, .get)
        
    }
    
    func testMovieDetailsUrlAndMethod() throws {
        // given:
        let service: MobileService
        
        // when
        service = .getMovie(MovieDetailsRequest())
        
        // then:
        XCTAssertEqual(service.url, URL(string: "https://api.themoviedb.org/3/movie/")!)
        XCTAssertEqual(service.method, .get)
    }

}
