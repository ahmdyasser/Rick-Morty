//
//  Extensions.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 28/12/2022.
//

import UIKit

extension UIView {
    public func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
