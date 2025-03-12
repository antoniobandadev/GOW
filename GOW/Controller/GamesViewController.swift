//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 07/03/25.
//

import UIKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var imagePageControl: UIPageControl!
    
    //datasource :P
    let gamePosters = Array(0...7)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imagePageControl.numberOfPages = gamePosters.count
        gameImage.image = UIImage(named: gamePosters.first?.description ?? "0")
        updatePageIndicatorImage()
    }
    

    
    @IBAction func rigthSwipeDone(_ sender: Any) {
        
        if(imagePageControl.currentPage == 0){
            imagePageControl.currentPage = 7
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }else{
            imagePageControl.currentPage -= 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        updatePageIndicatorImage()
        
        print("Right swipe done")
        
        
    }
    
    @IBAction func leftSwipeDone(_ sender: Any) {
        
        if(imagePageControl.currentPage == 7){
            imagePageControl.currentPage = 0
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }else{
            imagePageControl.currentPage += 1
            gameImage.image = UIImage(named: String(gamePosters[imagePageControl.currentPage]))
        }
        updatePageIndicatorImage()
        
        print("Left swipe done")
    }
    
    
    
    
    func updatePageIndicatorImage() {
        guard let originalImage = UIImage(named: "gow_logo.png") else {
            print("Error: La imagen no se pudo cargar.")
            return
        }
        
        let resizedImage = resizeImage(image: originalImage, targetSize: CGSize(width: 30, height: 30))
       
        // Restablecer las imágenes personalizadas para todas las páginas
        for i in 0..<imagePageControl.numberOfPages {
            imagePageControl.setIndicatorImage(nil, forPage: i)
        }
        
        // Asignar la imagen redimensionada al indicador de la página actual
        imagePageControl.setIndicatorImage(resizedImage, forPage: imagePageControl.currentPage)
        if #available(iOS 16.0, *) {
            imagePageControl.setCurrentPageIndicatorImage(resizedImage, forPage: imagePageControl.currentPage)
        }
        
        imagePageControl.currentPageIndicatorTintColor = UIColor(named: "GOWRed")
    }
    
    
    
    
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        
        // Determinar el tamaño de redimensionado
        var newSize: CGSize
        if widthRatio > heightRatio {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio, height: size.height * widthRatio)
        }
        
        // Redimensionar la imagen
        let rect = CGRect(origin: .zero, size: newSize)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    
}

