//
//  DrinksInteractor.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import Foundation

protocol DrinksInteractorProtocol: AnyObject {
    var presenter: DrinksPresenterProtocol { get }
    init(presenter: DrinksPresenterProtocol)
    func getAllDrinkFilters()
}

class DrinksInteractor: DrinksInteractorProtocol {
    var presenter: DrinksPresenterProtocol
    
    required init(presenter: DrinksPresenterProtocol) {
        self.presenter = presenter
    }
    
    func getAllDrinkFilters() {
        
    }
}
