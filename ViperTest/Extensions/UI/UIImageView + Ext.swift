//
//  UIImageView + Ext.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import UIKit

extension UIImageView {
    
    convenience init(_ image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
