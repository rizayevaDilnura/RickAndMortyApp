//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by Dilnura Rizaeva on 19.12.2024.
//

import UIKit

/// Controller to show and search for Character  
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        let request = RMRequest(
            endPoint: .character,
            queryParameters: [
            URLQueryItem(name: "name", value: "rick"),
            URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url)

        RMService.shared.execute(request, expecting: RMCharacter.self) { result in

        }
    }
}
