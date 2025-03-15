//
//  CharactersCell.swift
//  GOW
//
//  Created by Antonio Banda  on 12/03/25.
//

import UIKit

class CharactersCell: UICollectionViewCell {
    
    @IBOutlet weak var characterLabel: UILabel!
    @IBOutlet weak var characterImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        characterLabel.setCustomFont(fontName: Constants.fontMenuTitle, size: Constants.fontSizeDefault, textStyle: .headline)
    }
    
}
