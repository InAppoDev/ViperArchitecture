//
//  DrinksPresenter.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import Foundation

//MARK: Presenter
protocol DrinksPresenterProtocol: AnyObject {
    var router: DrinksRouterProtocol! { set get }
    var interactor: DrinksInteractorProtocol! { get set }
    var view: DrinksViewProtocol { get }
    
    init(view: DrinksViewProtocol)
    
    func showHud()
    func hideHud()
    func configureView()
    func filterButtonTapped()
}

class DrinksPresenter: DrinksPresenterProtocol {
    
    var view: DrinksViewProtocol
    var router: DrinksRouterProtocol!
    var interactor: DrinksInteractorProtocol!
    
    required init(view: DrinksViewProtocol) {
        self.view = view
    }
    
    func configureView() {
        interactor.getAllDrinkFilters()
    }
    
    func filterButtonTapped() {
        router.showFilterVC()
    }
    
    func showHud() {
        
    }
    
    func hideHud() {
        
    }
    
    
}
