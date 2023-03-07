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
        
        
    }
    


}
