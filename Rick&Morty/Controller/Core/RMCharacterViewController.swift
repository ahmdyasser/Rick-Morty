//
//  RMCharacterViewController.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 24/12/2022.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character, pathComponents: ["1"], queryParameters:
        [
            URLQueryItem(name: "name", value: "rick")
        ])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            
        }
    }
    
}
