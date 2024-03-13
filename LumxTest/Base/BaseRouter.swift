//
//  BaseRouter.swift
//  LumxTest
//
//  Created by Fernando on 12/03/24.
//

import UIKit

class BaseRouter {
    weak var viewController: UIViewController?
    
    required init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func push(vc: UIViewController, animated: Bool) {
        viewController?.navigationController?.pushViewController(vc, animated: animated)
    }
    
    func pop(animated: Bool) {
        viewController?.navigationController?.popViewController(animated: animated)
    }
    
    func popToRoot(animated: Bool) {
        viewController?.navigationController?.popToRootViewController(animated: animated)
    }
    
    
}
