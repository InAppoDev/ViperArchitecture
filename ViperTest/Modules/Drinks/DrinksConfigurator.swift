//
//  DrinksConfigurator.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import UIKit

//MARK: Configurator
protocol DrinksConfiguratorProtocol: AnyObject {
    func configure(with viewController: DrinksVC)
}

class DrinksConfigurator: DrinksConfiguratorProtocol {
    func configure(with viewController: DrinksVC) {
        let presenter = DrinksPresenter(view: viewController)
        let interactor = DrinksInteractor(presenter: presenter)
        let router = DrinksRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.router = router
        presenter.interactor = interactor
    }
}
