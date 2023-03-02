
import UIKit

class LoginViewController: UIViewController {

    var loginScreen: LoginScreen?
    
    override func loadView() { 
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
        self.loginScreen?.validaTextFields()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround() // Funcao criada no arquivo Extension
        self.loginScreen?.delegate(delegate: self)
        self.loginScreen?.configTextFields(delegate: self)
    }
            
}

extension LoginViewController: LoginScreenProtocol{
   
    func actionLoginButton() {
        print("Deu certo o login")
    }
    
    func actionRegisterButton() {
        navigationController?.pushViewController(RegisterViewController(), animated: true)
    }
}


extension LoginViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1).cgColor
        
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        self.loginScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print(#function)
        return true
    }
    
}
