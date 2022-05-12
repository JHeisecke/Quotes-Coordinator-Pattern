//
//  AppCoordinator.swift
//  Quotes
//
//  Created by Javier Heisecke on 2022-05-12.
//  Copyright © 2022 Code Foundry. All rights reserved.
//

import UIKit
import Foundation

class AppCoordinator {
    private let navigationController = UINavigationController()
    
    var rootViewController: UIViewController {
        return navigationController
    }
    
    func start() {
        showQuotes()
    }
    
    func showQuotes() {
        guard let quotesViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "QuotesViewController") as? QuotesViewController else {
            fatalError("Unable to Instantiate Quotes View Controller")
        }
        navigationController.pushViewController(quotesViewController, animated: true)
    }
}
