
import UIKit

class SucessRegisteredViewController: UIViewController {
    
    var sucessScreen: SucessRegisteredAccount?
    
    override func loadView() {
        self.sucessScreen = SucessRegisteredAccount()
        self.view = self.sucessScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        self.view.backgroundColor = .white
        self.sucessScreen?.delegate(delegate: self)
        
    }
    
}

extension SucessRegisteredViewController: SucessRegisteredProtocol{
   
    
    func tapToLogin() {
       navigationController?.pushViewController(LoginViewController(), animated: true)
    }
}

extension SucessRegisteredViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 48/255, green: 68/255, blue: 20/255, alpha: 1).cgColor
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print(#function)
        return true
    }
    
}

