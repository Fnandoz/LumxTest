//
//  MovieListViewController.swift
//  LumxTest
//
//  Created by Fernando on 11/03/24.
//

import UIKit

class MovieListViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(MovieCoverViewCell.self, forCellWithReuseIdentifier: MovieCoverViewCell.reuseIdentifier)

    }

    @IBAction func didChangeSegmentControl(_ sender: UISegmentedControl) {
        
    }
}

extension MovieListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Clicked")
    }
}

extension MovieListViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCoverViewCell.reuseIdentifier, for: indexPath) as? MovieCoverViewCell {
            cell.setupCover(cover: "https://image.tmdb.org/t/p/w500/1E5baAaEse26fej7uHcjOgEE2t2.jpg", title: "fast X", releaseDate: "10/10/10")
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
