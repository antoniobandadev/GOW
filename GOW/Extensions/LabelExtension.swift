//
//  LabelExtension.swift
//  GOW
//
//  Created by Antonio Banda  on 08/03/25.
//
import UIKit

extension UILabel{
    //Sin estilo
    /* func setCustomFont(fontName: String, size: CGFloat){
     guard let customFont = UIFont(name: fontName, size: size) else {   // Si no encuentras la fuente entonces muestra la de systema y return
     self.font = UIFont.systemFont(ofSize: size)
     return
     } // si si la encuentras muestra la sig linea
     self.font = customFont
     }*/
    
    func setCustomFont(fontName: String, size: CGFloat, textStyle: UIFont.TextStyle){
        guard let customFont = UIFont(name: fontName, size: size) else {   // Si no encuentra la fuente entonces muestra la de system y return
            self.font = UIFont.systemFont(ofSize: size)
            return
        } // si si la encuentra muestra la sig linea
        self.font = customFont
        
        if #available(iOS 11.0, *){
            let fontMetrics = UIFontMetrics(forTextStyle: textStyle)
            self.font = fontMetrics.scaledFont(for: customFont)
            self.adjustsFontForContentSizeCategory = true
        }
        
    }
    
}
