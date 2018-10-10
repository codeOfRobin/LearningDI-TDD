//
//  ViewController.swift
//  LearningDI
//
//  Created by Robin Malhotra on 10/10/18.
//  Copyright © 2018 Robin Malhotra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView()
    var dataSource: [Minion]?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func fetchMinions(minionService: MinionService = MinionService()) {
        minionService.getTheMinions { (minions) in
        }
    }

}

