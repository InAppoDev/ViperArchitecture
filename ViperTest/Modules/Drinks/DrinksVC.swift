//
//  DrinksVC.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 31.08.2021.
//

import UIKit
import SnapKit
import Moya
import SwiftyJSON
import MBProgressHUD

protocol DrinksViewProtocol: AnyObject {
    func setDrinksFilter()
    func push(to vc: UIViewController)
}

class DrinksVC: UIViewController, DrinksViewProtocol {
    
    //MARK: Variables
    var presenter: DrinksPresenterProtocol!
    let configurator: DrinksConfiguratorProtocol = DrinksConfigurator()
    
    //MARK: UI Elements
    private lazy var tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.register(DrinkTableCell.self, forCellReuseIdentifier: DrinkTableCell.reuseId)
        table.delegate = self
        table.dataSource = self
        table.rowHeight = 74
        return table
    }()
    
    lazy var hud: MBProgressHUD = {
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.mode = .indeterminate
        hud.isSquare = true
        hud.label.text = "Loading"
        return hud
    }()
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
        configureUI()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.hud.show(animated: true)
            print("hud")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.hud.hide(animated: true)
        }
    }
    
    //MARK: ConfigureUI
    func configureUI() {
        title = "Drinks"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "bool-icon"),
            style: .plain,
            target: self,
            action: #selector(setDrinksFilter))
        view.backgroundColor = .white
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    
    func push(to vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func showFilterVC() {
        let dvc = FilterDrinksVC()
        navigationController?.pushViewController(dvc, animated: true)
    }
    
    @objc
    func setDrinksFilter() {
        presenter.filterButtonTapped()
    }
}

extension DrinksVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DrinkTableCell.reuseId,
                                                 for: indexPath) as! DrinkTableCell
        return cell
    }
}
