//
//  LearningDITests.swift
//  LearningDITests
//
//  Created by Robin Malhotra on 10/10/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
import UIKit
import Foundation
@testable import LearningDI

class LearningDITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testIfViewControllerCorrectlyInstantiated() {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let vc = storyboard.instantiateInitialViewController() as? ViewController
        XCTAssertNotNil(vc)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
