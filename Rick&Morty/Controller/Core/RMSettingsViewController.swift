//
//  RMSettingsViewController.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 24/12/2022.
//

import UIKit

/// Controller to show various app options and settings
final class RMSettingsViewController: UIViewController, SomeViewDelegate {
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let someView = SomeView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)), delegate: self)
        someView.center = view.center
        someView.setup()
        someView.translatesAutoresizingMaskIntoConstraints = false
        someView.backgroundColor = .red
        view.addSubview(someView)
        view.backgroundColor = .systemBackground
        title = "Settings"
    }
    
    
    
    func didTapOnSomeButton() {
        print("click from view controller")
    }
}
