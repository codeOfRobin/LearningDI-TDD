//
//  MinionService.swift
//  LearningDI
//
//  Created by Robin Malhotra on 10/10/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import Foundation

class MinionService {
    func getTheMinions(completionHandler: ([Minion]) -> Void) {
        let result = [Minion(name: "Bob"), Minion(name: "Dave")]
        completionHandler(result)
    }
}
