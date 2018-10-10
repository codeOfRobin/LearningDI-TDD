//
//  ViewControllerTests.swift
//  LearningDITests
//
//  Created by Robin Malhotra on 10/10/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import XCTest
@testable import LearningDI

class ViewControllerTests: XCTestCase {

    class FakeMinionService: MinionService {
        var getMinionsWasCalled = false

        override func getTheMinions(completionHandler: ([Minion]) -> Void) {
            getMinionsWasCalled = true
            completionHandler([ Minion(name: "Bob"), Minion(name: "Dave"), Minion(name: "JD") ])
        }
    }

    let fakeMinionService = FakeMinionService()
    lazy var viewController: ViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as? ViewController
        return viewController!
    }()

    func testExample() {
        viewController.fetchMinions(minionService: fakeMinionService)
        XCTAssertTrue(fakeMinionService.getMinionsWasCalled)
        if let dataSource = viewController.dataSource {
            XCTAssertEqual(dataSource.map{ $0.name }, ["Bob", "Dave", "JD"])
        } else {
            XCTFail("Data source is nil")
        }
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
