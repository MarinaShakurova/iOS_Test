//
//  QuestionsViewController.swift
//  Skills
//
//  Created by Admin on 01.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {

    @IBOutlet var numberTest: UILabel!
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var questionTable: UITableView!
    
    @IBAction func nextAction(_ sender: Any) {
    }
    @IBOutlet var nextLabel: UIButton!
    
    var questions: [Tests]=[]
    
    let number: [String] = ["Вопрос 1",
                            "Вопрос 2",
                            "Вопрос 3",
                            "Вопрос 4",
                            "Вопрос 5"]
    
    override func viewDidLoad() {
        var i = 0
        numberTest.text = number[i]
        questions.append(Tests(answered: .first, status: "", name: "", description: ""))
    }
}

extension QuestionsViewController: UITableViewDelegate{
}

extension QuestionsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "answercell") as?ListTestTableViewCell{
            
            let test = questions[indexPath.row]
            
            cell.testTitle = test
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let run = UIContextualAction(style: .normal, title: "ПРОЙТИ", handler: {
            (action, view, completion) in
            completion(true)
        })
        run.backgroundColor = .green
        return .init(actions: [run])
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    }
}
