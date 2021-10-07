//
//  UIView + Ext.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 05.09.2021.
//

import UIKit

extension UIView {
  func anchor(top: NSLayoutYAxisAnchor?, bottom: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, right: NSLayoutXAxisAnchor?) {
      translatesAutoresizingMaskIntoConstraints = false
      if let top = top {
          topAnchor.constraint(equalTo: top, constant: 15).isActive = true
      }
      if let left = left {
          leftAnchor.constraint(equalTo: left, constant: 15).isActive = true
      }
      if let right = right {
          rightAnchor.constraint(equalTo: right, constant: -15).isActive = true
      }
      if let bottom = bottom {
          bottomAnchor.constraint(equalTo: bottom, constant: -15).isActive = true
      }
  }

}
