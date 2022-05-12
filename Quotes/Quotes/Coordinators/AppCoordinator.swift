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
        
        quotesViewController.willShowQuote = { [weak self] quote in
            self?.showQuote(quote)
        }
        
        quotesViewController.willShowSettings = { [weak self] in
            self?.showSettings()
        }
        
        navigationController.pushViewController(quotesViewController, animated: true)
    }
    
    func showQuote(_ quote: Quote) {
        let quoteViewController = QuoteViewController.instantiate()
        quoteViewController.quote = quote
        navigationController.pushViewController(quoteViewController, animated: true)
    }
    
    func showSettings() {
        let settingsViewController = SettingsViewController.instantiate()
        settingsViewController.willHide = { [weak self] in
            self?.navigationController.dismiss(animated: true)
        }
        // Present Settings View Controller
        navigationController.present(settingsViewController, animated: true)
    }
}
