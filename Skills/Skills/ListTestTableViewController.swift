//
//  ListTestTableViewController.swift
//  Skills
//
//  Created by Admin on 01.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ListTestTableViewController: ViewController {

    @IBOutlet var titleList: UILabel!
    @IBOutlet var testTableView: UITableView!
    
    var tests: [String] = []
    
    override func viewDidLoad() {
        
        tests.append("Тест 1")
        tests.append("Тест 2")
        tests.append("Тест 3")
        
    }
}


extension ListTestTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        return .init(actions: [UIContextualAction(style: .normal, title: "ПРОЙТИ", handler: {
            (action, view, completion) in
            completion(true)
        })])
    }}
