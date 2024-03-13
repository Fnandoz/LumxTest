//
//  MovieListViewController.swift
//  LumxTest
//
//  Created by Fernando on 11/03/24.
//

import UIKit

class MovieListViewController: UIViewController {

    var viewModel: MovieListViewModel?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(MovieCoverViewCell.self, forCellWithReuseIdentifier: MovieCoverViewCell.reuseIdentifier)
        setupReactors()
        viewModel?.viewDidLoad()

    }

    @IBAction func didChangeSegmentControl(_ sender: UISegmentedControl) {
        
    }
}

extension MovieListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        viewModel?.openMovieDetails()
    }
}

extension MovieListViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.countMovies() ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCoverViewCell.reuseIdentifier, for: indexPath) as? MovieCoverViewCell,
           let movie = viewModel?.movieForRowAt(indexPath: indexPath) {
            cell.setupCover(cover: movie.posterPath, title: movie.title, releaseDate: movie.releaseDate)
            return cell
        }
        return UICollectionViewCell()
    }
}

extension MovieListViewController {
    func setupReactors() {
        viewModel?.showEmptyState = { [weak self] in
            guard let self = self else { return }
        }
        
        viewModel?.hideEmptyState = { [weak self] in
            guard let self = self else { return }
        }
        
        viewModel?.showError = { [weak self] message in
            guard let self = self else { return }
        }
        
        viewModel?.reloadData = { [weak self] in
            guard let self = self else { return }
            self.collectionView.reloadData()
        }
    }
}
