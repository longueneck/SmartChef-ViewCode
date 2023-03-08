//
//  IngredientsTableViewCell.swift
//  SmartChet-Struct
//
//  Created by Kevin Longue on 07/03/23.
//

import Foundation
import UIKit

class IngredientsTableViewCell: UITableViewCell{
    
    static let identifier = "IngredientsTableViewCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubView()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    lazy var lbIngredients:UILabel = {
       let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "Ingredients"
        label1.font = UIFont.systemFont(ofSize: 14)
        label1.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        
        
        return label1
    }()
    
    lazy var buttonOne:UIButton = {
        let button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.layer.cornerRadius = 10
        button1.backgroundColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        button1.setTitle("+", for: .normal)
        


        return button1
    }()

    lazy var buttonTwo:UIButton = {
        let button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.layer.cornerRadius = 10
        button2.backgroundColor = .red
        button2.setTitle("-", for: .normal)


        return button2
    }()
    
    func addSubView(){
        self.addSubview(self.lbIngredients)
        self.addSubview(self.buttonOne)
        self.addSubview(self.buttonTwo)
    }
    
    func addConstraints(){
        NSLayoutConstraint.activate([
        
            lbIngredients.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            lbIngredients.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            
            buttonTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            buttonTwo.centerYAnchor.constraint(equalTo: lbIngredients.centerYAnchor),
            buttonTwo.heightAnchor.constraint(equalToConstant: 20),
            buttonTwo.widthAnchor.constraint(equalToConstant: 20),

            buttonOne.trailingAnchor.constraint(equalTo: buttonTwo.leadingAnchor, constant: -10),
            buttonOne.centerYAnchor.constraint(equalTo: buttonTwo.centerYAnchor),
            buttonOne.heightAnchor.constraint(equalToConstant: 20),
            buttonOne.widthAnchor.constraint(equalToConstant: 20),

        
        ])
    }
    
}
