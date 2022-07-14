//
//  MainViewController.swift
//  ColorizedApp
//
//  Created by alexkarav on 13.07.2022.
//

import UIKit

protocol ColorSetupViewControllerDelegate {
    func saveColorSetup(with color: UIColor)
}

class MainViewController: UIViewController {
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainViewController:  ColorSetupViewControllerDelegate {
    func saveColorSetup(with color: UIColor) {
        view.backgroundColor = color
    }
}
