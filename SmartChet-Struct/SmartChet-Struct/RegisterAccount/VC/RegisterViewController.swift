
import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    var registerScreen: Register?
    
    var auth:Auth?
    
    override func loadView() {
        self.registerScreen = Register()
        self.view = self.registerScreen
        self.registerScreen?.validaTextFields()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        hideKeyboardWhenTappedAround()
        self.registerScreen?.delegate(delegate: self)
        self.registerScreen?.configTextFields(delegate: self)
        self.auth = Auth.auth()
    }
    
}

extension RegisterViewController: RegisterProtocol{
    func actionCreateButton() {
        print("Esta funcionando!")
    }
    
    
    func actionRegisterButton() {
        navigationController?.pushViewController(LoginViewController(), animated: true)
    }
    
    func tapButton(){
        
        let _: String = self.registerScreen?.userTextField.text ?? ""
        let email: String = self.registerScreen?.emailTextField.text ?? ""
        let senha: String = self.registerScreen?.passwordTextField.text ?? ""
        
        
        self.auth?.createUser(withEmail: email, password: senha, completion: { (result, error) in
            if error != nil{
                print("Erro ao cadastrar")
            }else{
                self.navigationController?.pushViewController(SucessRegisteredViewController(), animated: true)
            }
        })
    }
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1).cgColor
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        textField.layer.borderWidth = 3
        textField.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        self.registerScreen?.validaTextFields()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        print(#function)
        return true
    }
    
}


