//
//  UILabel + Ext.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import UIKit

extension UILabel {
    
    convenience init(font: UIFont?, textColor: UIColor) {
        self.init()
        self.font = font
        self.textColor = textColor
    }
    
}
