//
//  TaskCell.swift
//  TaskBuddyBeta1
//
//  Created by Jonathan Compton on 8/14/18.
//  Copyright © 2018 Jonathan Compton. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    
    @IBOutlet weak var cellContainerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 8
        cellContainerView.layer.cornerRadius = 8
        cellContainerView.layer.shadowColor = UIColor.black.cgColor
        cellContainerView.layer.shadowRadius = 4
        cellContainerView.layer.shadowOpacity = 0.4
        cellContainerView.layer.shadowOffset = CGSize(width: 2, height: 2)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
