//
//  DrinksRouter.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import Foundation

protocol DrinksRouterProtocol: AnyObject {
    var viewController: DrinksVC { get }
    init(viewController: DrinksVC)
    func showFilterVC()
}

class DrinksRouter: DrinksRouterProtocol {
    var viewController: DrinksVC
    
    required init(viewController: DrinksVC) {
        self.viewController = viewController
    }
    
    func showFilterVC() {
        let dvc = FilterDrinksVC()
        viewController.push(to: dvc)
    }
}
