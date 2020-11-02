//
//  PersonalAreaMenuViewController.swift
//  Sigma
//
//  Created by Admin on 31.10.20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ListTestTablwViewController: ViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var items: [String] = []
    
    override func viewDidLoad() {
    
        items.append("Тест 1")
        items.append("Тест 2")
        items.append("Тест 3")

    }
}

extension ListTestTablwViewController: UITableViewDelegate{
}

extension ListTestTablwViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPth: IndexPath) -> UITableViewCell.EditingStyle{
        return .delete
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        return .init(actions: [UIContextualAction(style: .destructive, title: "DELETE", handler: {
            [weak self](action, view, completion) in
            self?.items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .right)
            completion(true)
        })])
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = items.remove(at: sourceIndexPath.row)
        items.insert(item, at: destinationIndexPath.row)
    }
}
