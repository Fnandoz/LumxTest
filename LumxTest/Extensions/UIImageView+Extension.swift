//
//  UIImageView+Extension.swift
//  LumxTest
//
//  Created by Fernando on 11/03/24.
//

import Foundation
import Alamofire
import UIKit

extension UIImageView {
    func loadFromUrl(_ url: String) {
        AF.request("https://image.tmdb.org/t/p/original\(url)", method: .get)
            .response { response in
                guard let data = response.data, response.error == nil else {
                    return
                }
                self.image = UIImage(data: data, scale: 1)
            }
    }
}
