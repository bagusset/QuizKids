//
//  categoryCells.swift
//  QuizKids
//
//  Created by Bagus setiawan on 09/11/20.
//

import UIKit

class categoryCells: UITableViewCell {
    
    @IBOutlet weak var backgroundCell: UIView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        settingCells()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func settingCells(){
        backgroundCell.backgroundColor = #colorLiteral(red: 0.9960784314, green: 0.7607843137, blue: 0.3607843137, alpha: 1)
        backgroundCell.layer.cornerRadius = 10
    }

}
