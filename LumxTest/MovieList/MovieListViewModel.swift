//
//  MovieListViewModel.swift
//  LumxTest
//
//  Created by Fernando on 07/03/24.
//

import Foundation

class MovieListViewModel {
    // MARK: - Properties
    let router: MovieListRouter?
    let model: MovieListModel?
    
    
    // MARK: - Private properties
    private var movieList: [MovieModel] = []
    
    // MARK: - Reactors
    var showEmptyState: (() -> Void)?
    var hideEmptyState: (() -> Void)?
    var reloadData: (() -> Void)?
    var showError: ((String) -> Void)?
    
    // MARK: - Init
    init(router: MovieListRouter?, model: MovieListModel?) {
        self.router = router
        self.model = model
    }
    
    func viewDidLoad() {
    }
    
    func fetchUpcomingMovies() {
        model?.fetchUpcomingMovieList(completion: { movies, error in
            if (error != nil)  {
                self.showError?(error.debugDescription)
                return
            }
            
            guard let movies = movies else {
                self.showEmptyState?()
                return
            }
            
            self.movieList = movies
            self.reloadData?()
        })
    }
    
    func fetchPopularMovies() {
        model?.fetchPopularMovieList(completion: { movies, error in
            if (error != nil)  {
                self.showError?(error.debugDescription)
                return
            }
            
            guard let movies = movies else {
                self.showEmptyState?()
                return
            }
            
            self.movieList = movies
            self.reloadData?()
        })
    }
    
    func countMovies() -> Int {
        self.movieList.count
    }
    
    func movieForRowAt(indexPath: IndexPath) -> MovieModel {
        movieList[indexPath.row]
    }
    
    func openMovieDetails() {}
}
