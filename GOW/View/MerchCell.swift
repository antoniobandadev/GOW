//
//  MerchCell.swift
//  GOW
//
//  Created by Antonio Banda  on 14/03/25.
//

import UIKit

class MerchCell: UITableViewCell {

    @IBOutlet weak var imageMerch: UIImageView!
    
    @IBOutlet weak var lbMerch: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        lbMerch.setCustomFont(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .headline)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
