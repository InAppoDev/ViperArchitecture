//
//  UITableViewCell + Ext.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import UIKit

extension UITableViewCell {
    
    static var reuseId: String {
        String(describing: Self.self)
    }
    
}
