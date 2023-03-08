//
//  MainViewController.swift
//  SmartChet-Struct
//
//  Created by Kevin Longue on 06/03/23.
//

import UIKit

class MainViewController: UIViewController {
    
    
    var mainScreen: Main?
    
    override func loadView() {
        self.mainScreen = Main()
        self.view = self.mainScreen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        mainScreen?.addTableViewDelegate(delegate: self, dataSource: self)
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IngredientsTableViewCell.identifier, for: indexPath) as? IngredientsTableViewCell
        
        return cell ?? UITableViewCell()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
