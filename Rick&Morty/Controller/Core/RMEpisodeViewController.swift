//
//  RMEpisodeViewController.swift
//  Rick&Morty
//
//  Created by Ahmad Yasser on 24/12/2022.
//

import UIKit

/// Controller to show and search for episodes
final class RMEpisodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://rickandmortyapi.com/api/episode/1")!
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            print(data)
            do {
                let episode = try JSONDecoder().decode(RMEpisode.self, from: data)
                print(episode.airDate)
                
            } catch {
                print(error.localizedDescription)
            }
            
            
        }
        task.resume()

        
        view.backgroundColor = .systemBackground
        title = "Episodes"
    }
}
