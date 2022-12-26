//
//  SomeView.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 26/12/2022.
//

import UIKit

class SomeView: UIView {
    
    var delegate: SomeViewDelegate?

 
    public func setup() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(doThat))
        self.addGestureRecognizer(tap)
    }
    
    @objc private func doThat() {
        guard let delegate = delegate else { return }
        delegate.didTapOnSomeButton()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    convenience init(frame: CGRect, delegate: SomeViewDelegate) {
        self.init(frame: frame)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

protocol SomeViewDelegate {
    func didTapOnSomeButton()
}
