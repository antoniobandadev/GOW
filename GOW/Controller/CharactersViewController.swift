//
//  CharactersViewController.swift
//  GOW
//
//  Created by Antonio Banda  on 12/03/25.
//

import UIKit

class CharactersViewController: UIViewController {

    @IBOutlet weak var characterCollView: UICollectionView!
    
    var characterDat : [String:String] = [:]
    
    let characters : [Character] = [
        Character(
            name: "character.name.marcus_fenix",
            description: "character.description.marcus_fenix",
            image: "MarcusFenix"
        ),
        Character(
            name: "character.name.dom_santiago",
            description: "character.description.dom_santiago",
            image: "DominicSantiago"
        ),
        Character(
            name: "character.name.kait_diaz",
            description: "character.description.kait_diaz",
            image: "KaitDiaz"
        ),
        Character(
            name: "character.name.jd_fenix",
            description: "character.description.jd_fenix",
            image: "JDFenix"
        ),
        Character(
            name: "character.name.swarm_hunter",
            description: "character.description.swarm_hunter",
            image: "SwarmHunter"
        ),
        Character(
            name: "character.name.jace_stroud",
            description: "character.description.jace_stroud",
            image: "JaceStroud"
        ),
        Character(
            name: "character.name.anya_stroud",
            description: "character.description.anya_stroud",
            image: "AnyaStroud"
        )
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterCollView.delegate = self
        characterCollView.dataSource = self
        

      
    }
    
}

extension CharactersViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return characters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "characterCell", for: indexPath) as! CharactersCell
        
        let character = characters[indexPath.row]
        
        cell.characterLabel.text = character.name.localized
        cell.characterImage.image = UIImage(named: "\(character.image)")
        cell.layer.cornerRadius = 10
        //cell.si
        //cell.backgroundColor = UIColor(named: "GOWBlack2")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Seleccionaste el item \(characters[indexPath.row].name)")
        let character = characters[indexPath.row]
        
        characterDat = [
            "image": character.image,
            "name": character.name.localized,
            "description": character.description.localized
        ]
        
        performSegue(withIdentifier: "charDetSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
               if segue.identifier == "charDetSegue" {
                   let destinationVC = segue.destination as! CharDetViewController
                   destinationVC.charDet = characterDat
               }
    }
    
   
    
}
