//
//  MovieListRouter.swift
//  LumxTest
//
//  Created by Fernando on 07/03/24.
//

import Foundation
import UIKit

class MovieListRouter: BaseRouter {
    static func makeModule() -> UIViewController {
        let vc = MovieListViewController()
        let router = MovieListRouter(viewController: vc)
        let model = MovieListModel()
        let viewModel = MovieListViewModel(router: router, model: model)
        vc.viewModel = viewModel
        return vc
    }
}
