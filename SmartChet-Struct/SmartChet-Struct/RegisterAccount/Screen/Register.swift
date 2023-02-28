//
//  Register.swift
//  SmartChet-Struct
//
//  Created by Kevin Longue on 27/02/23.
//

import UIKit

protocol RegisterProtocol: AnyObject{
    
    func actionCreateButton()
}

class Register: UIView {
 
    private weak var delegate:RegisterViewController?
    
    func delegate(delegate: RegisterProtocol?){
        self.delegate = delegate as! RegisterViewController
    }
    
    let mainView: UIView = {
        let main = UIView()
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .white
        return main
    }()
        
    let labelWelcome: UILabel = {
        let welcome = UILabel()
        welcome.translatesAutoresizingMaskIntoConstraints = false
        welcome.text = "Crie sua conta"
        welcome.textColor = UIColor(red: 255/255, green: 177/255, blue: 20/255, alpha: 1)
        welcome.font = UIFont.boldSystemFont(ofSize: 26)
        return welcome
    }()
    
    let labelTextPresentation: UILabel = {
        let textPresentation = UILabel()
        textPresentation.translatesAutoresizingMaskIntoConstraints = false
        textPresentation.text = "Cozinhe com ingredientes da sua dispensa"
        textPresentation.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        textPresentation.font = UIFont.systemFont(ofSize: 14)
        return textPresentation
    }()
    
    let logoChar: UIImageView = {
        let char = UIImageView()
        char.translatesAutoresizingMaskIntoConstraints = false
        char.image = UIImage(named: "logo 1.png")
        return char
    }()
    
    
    let logoName: UIImageView = {
        let nameLogo = UIImageView()
        nameLogo.translatesAutoresizingMaskIntoConstraints = false
        nameLogo.image = UIImage(named: "Group 120.png")
        
        
        return nameLogo
    }()
    
    let labelUserName: UILabel = {
        let textPresentation = UILabel()
        textPresentation.translatesAutoresizingMaskIntoConstraints = false
        textPresentation.text = "Nome de usuário"
        textPresentation.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        textPresentation.font = UIFont.systemFont(ofSize: 18)
        return textPresentation
    }()
    
    let userTextField: UITextField = {
        let userTf = UITextField()
        userTf.translatesAutoresizingMaskIntoConstraints = false
        userTf.backgroundColor = .white
        userTf.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        userTf.layer.borderWidth = 3
        userTf.layer.cornerRadius = 10
        userTf.layer.shadowColor = UIColor.black.cgColor
        userTf.layer.shadowOpacity = 0.1
        userTf.layer.shadowOffset = CGSize(width: 0, height: 2)
        userTf.layer.shadowRadius = 2
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: userTf.frame.height))
        userTf.leftView = paddingView
        userTf.leftViewMode = .always
        
        return userTf
    }()
    
    let labelEmail: UILabel = {
        let email = UILabel()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.text = "E-mail"
        email.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        email.font = UIFont.systemFont(ofSize: 18)
        return email
    }()
    
    let emailTextField: UITextField = {
        let tfEmail = UITextField()
        tfEmail.translatesAutoresizingMaskIntoConstraints = false
        tfEmail.backgroundColor = .white
        tfEmail.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        tfEmail.layer.borderWidth = 3
        tfEmail.layer.cornerRadius = 10
        tfEmail.layer.shadowColor = UIColor.black.cgColor
        tfEmail.layer.shadowOpacity = 0.1
        tfEmail.layer.shadowOffset = CGSize(width: 0, height: 2)
        tfEmail.layer.shadowRadius = 2
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tfEmail.frame.height))
        tfEmail.leftView = paddingView
        tfEmail.leftViewMode = .always
        
        return tfEmail
    }()
    
    let labelPassword: UILabel = {
        let pass = UILabel()
        pass.translatesAutoresizingMaskIntoConstraints = false
        pass.text = "Senha"
        pass.textColor = UIColor(red: 69/255, green: 48/255, blue: 22/255, alpha: 1)
        pass.font = UIFont.systemFont(ofSize: 18)
        return pass
    }()
    
    let passwordTextField: UITextField = {
        let tfpass = UITextField()
        tfpass.translatesAutoresizingMaskIntoConstraints = false
        tfpass.backgroundColor = .white
        tfpass.layer.borderColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1).cgColor
        tfpass.layer.borderWidth = 3
        tfpass.layer.cornerRadius = 10
        tfpass.layer.shadowColor = UIColor.black.cgColor
        tfpass.layer.shadowOpacity = 0.1
        tfpass.layer.shadowOffset = CGSize(width: 0, height: 2)
        tfpass.layer.shadowRadius = 2
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: tfpass.frame.height))
            tfpass.leftView = paddingView
            tfpass.leftViewMode = .always
        return tfpass
    }()
    
    let buttonCreate: UIButton = {
        let entrar = UIButton()
        
        entrar.translatesAutoresizingMaskIntoConstraints = false
        entrar.setTitle("Criar conta", for: .normal)
        entrar.setTitleColor(UIColor(red: 69/255, green: 48/255, blue: 22/255, alpha: 1), for: .normal)
        entrar.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        entrar.layer.cornerRadius = 10
        entrar.layer.shadowColor = UIColor.black.cgColor
        entrar.layer.shadowOpacity = 0.1
        entrar.layer.shadowOffset = CGSize(width: 0, height: 2)
        entrar.layer.shadowRadius = 2
        entrar.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        entrar.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        
        return entrar
    }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
           
            self.configSuperViews()
            self.addConstraintsForElements()
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func configSuperViews(){
            self.addSubview(self.mainView)
            self.addSubview(self.labelWelcome)
            self.addSubview(self.labelTextPresentation)
            self.addSubview(self.logoChar)
            self.addSubview(self.logoName)
            self.addSubview(self.labelUserName)
            self.addSubview(self.userTextField)
            self.addSubview(self.labelEmail)
            self.addSubview(self.emailTextField)
            self.addSubview(self.labelPassword)
            self.addSubview(self.passwordTextField)
            self.addSubview(self.buttonCreate)
        }
    
    public func configTextFields(delegate: UITextFieldDelegate){
        self.userTextField.delegate = delegate
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }

    @objc private func tapButton(){
      self.delegate?.tapButton()
    }
        
    public func validaTextFields(){ //Cria o metodo
        
        let email:String = self.emailTextField.text ?? ""
        let pass:String = self.passwordTextField.text ?? ""
        
        if !email.isEmpty && !pass.isEmpty {
            self.configButtonEnable(true)
        }else{
            self.configButtonEnable(false)
        }
    }
    
    private func configButtonEnable(_ enable:Bool){ //Seta configs para os metodos para hab ou desab
        if enable{
            self.buttonCreate.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
            self.buttonCreate.isEnabled = true
        }else{
            self.buttonCreate.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 0.5)
            self.buttonCreate.isEnabled = false
        }
    }
    
    
    func addConstraintsForElements(){
                NSLayoutConstraint.activate([
                    
                    mainView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
                    mainView.bottomAnchor.constraint(equalTo: self.topAnchor, constant: 0),
                    mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                    mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                    
                    labelWelcome.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
                    labelWelcome.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    
                    labelTextPresentation.topAnchor.constraint(equalTo: labelWelcome.bottomAnchor, constant: 7),
                    labelTextPresentation.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    
                    logoChar.topAnchor.constraint(equalTo: labelTextPresentation.bottomAnchor, constant: 50),
                    logoChar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    
                    logoName.centerYAnchor.constraint(equalTo: logoChar.centerYAnchor),
                    logoName.leadingAnchor.constraint(equalTo: logoChar.trailingAnchor, constant: 7),
                    
                    labelUserName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    labelUserName.topAnchor.constraint(equalTo: logoChar.bottomAnchor, constant: 35),
                    
                    userTextField.topAnchor.constraint(equalTo: labelUserName.bottomAnchor, constant: 5),
                    userTextField.heightAnchor.constraint(equalToConstant: 45),
                    userTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    userTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
                    
                    labelEmail.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    labelEmail.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 15),
                    
                    emailTextField.topAnchor.constraint(equalTo: labelEmail.bottomAnchor, constant: 5),
                    emailTextField.heightAnchor.constraint(equalToConstant: 45),
                    emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
                    
                    labelPassword.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    labelPassword.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
                    
                    passwordTextField.topAnchor.constraint(equalTo: labelPassword.bottomAnchor, constant: 5),
                    passwordTextField.heightAnchor.constraint(equalToConstant: 45),
                    passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
                    passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
                    
                    buttonCreate.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor,constant: 50),
                    buttonCreate.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 30),
                    buttonCreate.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -30),
                    buttonCreate.heightAnchor.constraint(equalToConstant: 40)
                ])
            }
            
        }
