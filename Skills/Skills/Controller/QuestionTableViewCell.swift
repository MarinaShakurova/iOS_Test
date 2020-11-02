//
//  ListTestTableViewCell.swift
//  Skills
//
//  Created by Admin on 01.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    @IBOutlet var answerLabel: UILabel!
    
    var fillAnswer: Tests?{
        didSet{
            guard let fillAnswer = fillAnswer else {return}
            if(fillAnswer.status == 0){
                answerLabel.text = fillAnswer.answered.question11
                fillAnswer.correct = 3
                fillAnswer.status = 1
            }
            else if(fillAnswer.status == 1){
                answerLabel.text = fillAnswer.answered.question12
                fillAnswer.correct = 2
                fillAnswer.status = 2
            }
            else if(fillAnswer.status == 2){
                answerLabel.text = fillAnswer.answered.question13
                fillAnswer.correct = 2
                fillAnswer.status = 3
            }
            else if(fillAnswer.status == 3){
                answerLabel.text = fillAnswer.answered.question14
                fillAnswer.correct = 2
                fillAnswer.status = 4
            }
            else if(fillAnswer.status == 4){
                answerLabel.text = fillAnswer.answered.question15
                fillAnswer.correct = 3
                fillAnswer.status = 0
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}

