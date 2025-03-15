//
//  CharDetViewController.swift
//  GOW
//
//  Created by Antonio Banda  on 14/03/25.
//

import UIKit

class CharDetViewController: UIViewController {

    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var lbDescription: UILabel!
    
    @IBAction func closeDet(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    var charDet : [String:String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let charDet = charDet {
            lbName.text = charDet["name"]
            image.image =  UIImage(named: charDet["image"]!)
            lbDescription.text = charDet["description"]
                  
               }
    }

}
