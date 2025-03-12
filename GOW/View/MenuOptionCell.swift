//
//  MenuOptionCell.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class MenuOptionCell: UITableViewCell {

    
    @IBOutlet weak var menuImage: UIImageView!
    
    @IBOutlet weak var menuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //menuLabel.font = UIFont(name: "CGFLocustResistance", size: 16) //Desde sistema HardCode
        //menuLabel.setCustomFont(fontName: "CGFLocustResistance", size: 16) //Desde una extension LabelExtension
        menuLabel.setCustomFont(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .headline) //Desde una extension LabelExtension usando valores constantes AppConstants
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
