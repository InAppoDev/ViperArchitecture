//
//  DrinkTableCell.swift
//  ViperTest
//
//  Created by Dmitiy Golovnia on 01.09.2021.
//

import UIKit

class DrinkTableCell: UITableViewCell {
    
    //MARK: UI Elements
    private lazy var drinkImageView = UIImageView(nil, contentMode: .scaleAspectFit)
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.text = "test"
        return label
    }()
    
    //MARK: Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCell(with title: String) {
        
    }
    
    //MARK: ConfigureUI
    func configureUI() {
        contentView.addSubview(drinkImageView)
        contentView.addSubview(titleLabel)
        selectionStyle = .none
        drinkImageView.backgroundColor = .red
        drinkImageView.snp.makeConstraints { make in
            make.height.width.equalTo(52)
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(16)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalTo(drinkImageView.snp.right).offset(10)
            make.right.equalToSuperview().inset(-10)
        }
    }
}
