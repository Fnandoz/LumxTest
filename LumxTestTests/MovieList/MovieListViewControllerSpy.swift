//
//  MovieListViewControllerSpy.swift
//  LumxTestTests
//
//  Created by Fernando on 12/03/24.
//

import Foundation
import UIKit
@testable import LumxTest

class MovieListViewControllerSpy: UIViewController {
    var viewModel: MovieListViewModel?
    
    var didCallShowEmptyState = false
    var didCallhideEmptyState = false
    var didCallShowError = false
    var didCallReloadData = false
    
    override func viewDidLoad() {
        
    }
    
    func setupReactors() {
        viewModel?.showEmptyState = { [weak self] in
            guard let self = self else { return }
            self.didCallShowEmptyState = true
        }
        
        viewModel?.hideEmptyState = { [weak self] in
            guard let self = self else { return }
            self.didCallhideEmptyState = true
        }
        
        viewModel?.showError = { [weak self] message in
            guard let self = self else { return }
            self.didCallShowError = true
            
        }
        
        viewModel?.reloadData = { [weak self] in
            guard let self = self else { return }
            self.didCallReloadData = true
        }
    }
}
