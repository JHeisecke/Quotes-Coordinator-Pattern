//
//  QuotesTests.swift
//  QuotesTests
//
//  Created by Javier Heisecke on 2022-05-12.
//  Copyright © 2022 Code Foundry. All rights reserved.
//

import XCTest
@testable import Quotes

class StoryboardableTests: XCTestCase {

    func testQuotesViewController() {
        _ = QuotesViewController.instantiate()
    }
    
    func testSettingsViewController() {
        _ = SettingsViewController.instantiate()
    }

}
