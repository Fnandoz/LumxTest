//
//  MovieCoverView.swift
//  LumxTest
//
//  Created by Fernando on 11/03/24.
//

import Foundation
import UIKit
import SnapKit

class MovieCoverViewCell: UICollectionViewCell {
    private static let reuseIdentifier = "MovieCoverViewCell"
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var coverImage: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var releaseDateLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 14)
        view.textColor = .white
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 12)
        view.textColor = .lightGray
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        self.addSubview(containerView)
        containerView.addSubview(coverImage)
        containerView.addSubview(releaseDateLabel)
        containerView.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        containerView.snp.makeConstraints {
            $0.top.bottom.leading.trailing.equalToSuperview()
        }
        
        coverImage.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.width.equalTo(160)
            $0.height.equalTo(180)
        }
        
        releaseDateLabel.snp.makeConstraints {
            $0.bottom.equalTo(coverImage.snp_bottomMargin).offset(-12)
            $0.centerX.equalTo(coverImage.snp_centerXWithinMargins)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(coverImage.snp_bottomMargin).offset(8)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    func setupCover(cover: String, title: String, releaseDate: String) {
        titleLabel.text = title
        releaseDateLabel.text = releaseDate
        coverImage.loadFromUrl(cover)
    }
}
