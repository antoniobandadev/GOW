//
//  StringExtension.swift
//  GOW
//
//  Created by Antonio Banda  on 08/03/25.
//

import Foundation

extension String {
    var localized : String {
        NSLocalizedString(self, comment: "")
    }
    
    func localized(whitComment: String) -> String {
        NSLocalizedString(self, comment: whitComment)
    }
    
}
