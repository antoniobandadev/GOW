//
//  MerchDetViewController.swift
//  GOW
//
//  Created by Antonio Banda  on 15/03/25.
//

import UIKit

class MerchDetViewController: UIViewController {

    @IBOutlet weak var lbTitle: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var lbDescription: UILabel!
    
    
    @IBAction func btClose(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    let imgArray = Array(0...1)
    
    var merchDet : [String:String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    
        
    
        if let merchDet = merchDet {
            lbTitle.text = merchDet["title"]
            lbDescription.text = merchDet["description"]
           // image.image =  UIImage(named: merchDet["image"]!)
            
            pageControl.numberOfPages = imgArray.count
            image.image = UIImage(named: merchDet["ini"]!)
                  
        }
    }
    
    
    @IBAction func RightSwipe(_ sender: Any) {
        //print("Right swipe done")
        if(pageControl.currentPage == 0){
            pageControl.currentPage = 1
            if let merchDet = merchDet {
                image.image = UIImage(named: merchDet["end"]!)
            }
        }else{
            pageControl.currentPage -= 1
            if let merchDet = merchDet {
                image.image = UIImage(named: merchDet["ini"]!)
            }
        }
    }
    
    @IBAction func LeftSwipe(_ sender: Any) {
       // print("Left swipe done")
        if(pageControl.currentPage == 1){
            pageControl.currentPage = 0
            if let merchDet = merchDet {
                image.image = UIImage(named: merchDet["ini"]!)
            }
        }else{
            pageControl.currentPage += 1
            if let merchDet = merchDet {
                image.image = UIImage(named: merchDet["end"]!)
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
