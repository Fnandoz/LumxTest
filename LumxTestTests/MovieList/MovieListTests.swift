//
//  MovieListTests.swift
//  LumxTestTests
//
//  Created by Fernando on 12/03/24.
//

import XCTest
@testable import LumxTest

final class MovieListTests: XCTestCase {
    

    func testViewControllerReactors() throws {
        // given:
        let vc = MovieListViewControllerSpy()
        let router = MovieListRouter(viewController: vc)
        let model = MovieListModel()
        let viewModel = MovieListViewModel(router: router, model: model)
        vc.viewModel = viewModel
        vc.setupReactors()
        
        // when:
        viewModel.showEmptyState?()
        viewModel.hideEmptyState?()
        viewModel.showError?("Error")
        viewModel.reloadData?()
        
        // then:
        XCTAssertTrue(vc.didCallShowEmptyState)
        XCTAssertTrue(vc.didCallhideEmptyState)
        XCTAssertTrue(vc.didCallShowError)
        XCTAssertTrue(vc.didCallReloadData)
    }
    
    func testFetchUpcomingMovieList() throws {
        // given:
        let vc = MovieListViewControllerSpy()
        let router = MovieListRouter(viewController: vc)
        let model = MovieListModel()
        let viewModel = MovieListViewModel(router: router, model: model)
        vc.viewModel = viewModel
        vc.setupReactors()
        
        // when:
        viewModel.fetchUpcomingMovies()
        
        // then:
        XCTAssertTrue(vc.didCallReloadData)
        XCTAssertGreaterThan(viewModel.countMovies(), 0)
        XCTAssertNotNil(viewModel.movieForRowAt(indexPath: IndexPath(row: 0, section: 0)))
    }

}
