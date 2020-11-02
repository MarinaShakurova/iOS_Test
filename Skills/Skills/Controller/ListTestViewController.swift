
import UIKit

class ListTestViewController: UIViewController {

    @IBOutlet var titleTest: UILabel!
    @IBOutlet var listTestTable: UITableView!
    
    var tests: [Tests] = []
    
    override func viewDidLoad() {
        
        titleTest.text = "Выберите тест"
        
        tests.append(Tests(answered: .second, status: 0, name:"Тест 1", description:"Прохождение теста номер 1", correct: 0))
        tests.append(Tests(answered: .second, status: 0, name:"Тест 2", description:"Прохождение теста номер 2", correct: 0))
        tests.append(Tests(answered: .second, status: 0, name:"Тест 3", description:"Прохождение теста номер 3", correct: 0))    }
}

extension ListTestViewController: UITableViewDelegate{
}

extension ListTestViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as?ListTestTableViewCell{

            let test = tests[indexPath.row]
            
            cell.testTitle = test
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let run = UIContextualAction(style: .normal, title: "ПРОЙТИ", handler: {
            (action, view, completion) in
            let viewController =  self.storyboard?.instantiateViewController(withIdentifier: "Question")
            self.navigationController?.pushViewController(viewController!, animated: true)
            completion(true)
        })
        run.backgroundColor = .green
        return .init(actions: [run])
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
    }
}
