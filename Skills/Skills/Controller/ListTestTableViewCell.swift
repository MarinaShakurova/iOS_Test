//
//  ListTestTableViewCell.swift
//  Skills
//
//  Created by Admin on 01.11.2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ListTestTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var testTitle: Tests?{
        didSet{
            guard let testTitle = testTitle else {return}
            nameLabel.text = testTitle.name
            descriptionLabel.text = testTitle.description
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
