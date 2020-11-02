
import UIKit

class QuestionTableViewController: UIViewController {
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerTable: UITableView!
    @IBOutlet var nextLabel: UIButton!
    @IBAction func nextAction(_ sender: Any) {
        if(i<4){
            titleLabel.text = titleTest[i][0]
            questionLabel.text = titleTest[i][1]
            answerTable.reloadData()
            i = i+1
            k = false
        }
        else if (i == 4){
            titleLabel.text = titleTest[i][0]
            questionLabel.text = titleTest[i][1]
            answerTable.reloadData()
            nextLabel.setTitle("Закончить тест", for: .normal)
            i = i+1
            k = false
        }
        else if (i == 5){
            k = false
            let viewController =  storyboard?.instantiateViewController(withIdentifier: "ListTest")
            navigationController?.pushViewController(viewController!, animated: true)
        }
}
    
    var questions: [Tests] = []
    
    var isPushing = false
    
    var titleTest = [
    ["Вопрос 1", "Можно ли из метода некоторого класса напрямую обратиться к приватному методу другого экземпляра этого же класса?"],
    ["Вопрос 2", "Если переопределить в классе метод finalize(), то для объекта этого класса этот метод будет вызван:"],
    ["Вопрос 3", "Можно ли при объявлении класса использовать модификаторы abstract и final одновременно?"],
    ["Вопрос 4", "Какие из следующих методов выбрасывает исключение InterruptedException?"],
    ["Вопрос 5", "Из какой структуры данных <сборщик мусора> удалит все элементы у которых исчезла последняя ссылка на их ключ в этой структуре?"]
    ]
    
    override func viewDidLoad() {
        i = 0
        titleLabel.text = titleTest[i][0]
        questionLabel.text = titleTest[i][1]
        
        questions.append(Tests(answered: .first, status: i, name:"", description:"", correct: 0))
        questions.append(Tests(answered:.second, status: i, name:"", description:"", correct: 0))
        questions.append(Tests(answered: .third, status: i, name:"", description:"", correct: 0))
        i=i+1
    }
}

var i = 0
var k = false

extension QuestionTableViewController: UITableViewDelegate{
}

extension QuestionTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "answercell") as?QuestionTableViewCell{
            let question = questions[indexPath.row]
            tableView.alwaysBounceVertical = false
            cell.fillAnswer = question
            cell.backgroundColor = .white
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let status = questions[indexPath.row].correct
        if questions[indexPath.row].answered == .third && k == false &&
            status == 3 {
            cell?.backgroundColor = .green
            k = true
        }
        else if questions[indexPath.row].answered == .second && k == false &&
            status == 2 {
            cell?.backgroundColor = .green
            k = true
        }
        else if questions[indexPath.row].answered == .first && k == false &&
            status == 1 {
            cell?.backgroundColor = .green
            k = true
        }
        else if k == false{
            cell?.backgroundColor = .red
            k = true
        }
        else if k == true {
            cell?.setSelected(false, animated: true)
        }
    }
}
