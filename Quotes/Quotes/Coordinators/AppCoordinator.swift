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
        let quotesViewController = QuotesViewController.instantiate()
        navigationController.pushViewController(quotesViewController, animated: true)
    }
}
