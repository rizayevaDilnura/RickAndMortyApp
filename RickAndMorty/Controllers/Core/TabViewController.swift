//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Dilnura Rizaeva on 28.09.2024.
//

import UIKit

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()

        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic


        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)

        nav1.tabBarItem = UITabBarItem(title: "Персонажи", image: UIImage(named: "персонажи"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Локации", image: UIImage(named: "локации"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Эпизоды", image: UIImage(named: "эпизоды"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Настройки", image: UIImage(named: "настройки"), tag: 4)

        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }


        setViewControllers(
    [nav1, nav2, nav3, nav4], animated: true)
    }

}

