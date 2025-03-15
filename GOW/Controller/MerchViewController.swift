//
//  MerchViewController.swift
//  GOW
//
//  Created by Antonio Banda  on 15/03/25.
//

import UIKit

class MerchViewController: UITableViewController {
    
 
    @IBOutlet weak var tbMerch: UITableView!
    
    var merchDat  :[String:String] = [:]
    
    let merchOptions : [Merchandise] = [
        Merchandise(
            ini:"01",
            end:"02",
            title:"merchandise.name.tshirt_gear",
            description: "merchandise.description.tshirt_gear",
            image:"tshirt")
        , Merchandise(
            ini:"11",
            end:"12",
            title:"merchandise.name.hat_gear",
            description: "merchandise.description.hat_gear",
            image:"hat")
        , Merchandise(
            ini:"21",
            end:"22",
            title:"merchandise.name.mug_gear",
            description:"merchandise.description.mug_gear",
            image:"mug")
        , Merchandise(
            ini:"31",
            end:"32",
            title:"merchandise.name.sweatshirt_gear",
            description:"merchandise.description.sweatshirt_gear",
            image:"sweatshirt")
        , Merchandise(
            ini:"41",
            end:"42",
            title:"merchandise.name.canvas_gear",
            description:"merchandise.description.canvas_gear",
            image:"canvas")
        , Merchandise(
            ini:"51",
            end:"52",
            title:"merchandise.name.patch_gear",
            description:"merchandise.description.patch_gear",
            image:"patch")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return merchOptions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "merchCell", for: indexPath) as! MerchCell
        let merchOption = merchOptions[indexPath.row]
        
        cell.lbMerch.text = merchOption.title.localized
        cell.imageMerch.image = UIImage(named:merchOption.image)?.withTintColor(UIColor(named: "GOWRed")!)
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let merchOption = merchOptions[indexPath.row]
        
        merchDat = [
            "ini": merchOption.ini,
            "end": merchOption.end,
            "title": merchOption.title.localized,
            "description" : merchOption.description.localized
        ]
        
        performSegue(withIdentifier: "merchDetSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "merchDetSegue" {
            let destinationVC = segue.destination as! MerchDetViewController
            destinationVC.merchDet = merchDat
        }
    }

 



   

}
