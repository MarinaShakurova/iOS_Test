//
//  QuestionsTableViewCell.swift
//  Skills
//
//  Created by Admin on 01.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class QuestionsTableViewCell: UITableViewCell {
    
    
    @IBOutlet var optionLabel: UIButton!
    var option: Tests?{
        didSet{
            guard option != nil else {return}
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
