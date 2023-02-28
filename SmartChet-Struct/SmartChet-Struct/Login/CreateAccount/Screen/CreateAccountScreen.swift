//
//  CreateAccountScreen.swift
//  SmartChet-Struct
//
//  Created by Kevin Longue on 27/02/23.
//

import UIKit

class CreateAccountScreen: UIView {

    var bgDownWhite: UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .white
        return background
    }()
    
    var ballInverted: UIImageView = {
        let balls = UIImageView()
        balls.image = UIImage(named: "bolas.png")
        balls.translatesAutoresizingMaskIntoConstraints = false
        return balls
    }()
    
    var labelBemVindo: UILabel = {
        let welcomeLabel = UILabel()
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.text = "Bem Vindo!"
        welcomeLabel.textColor = UIColor(red: 69/255, green: 48/255, blue: 22/255, alpha: 1)
        welcomeLabel.font = UIFont(name: "Purple Smile", size: 48)
        return welcomeLabel
    }()
    
    var roundedSquare: UIView = {
        let square = UIView()
        square.translatesAutoresizingMaskIntoConstraints = false
        square.layer.borderWidth = 7
        square.layer.borderColor = UIColor.white.cgColor
        square.layer.cornerRadius = 10
        return square
    }()
    
    var whiteSquare: UIView = {
        let white = UIView()
        white.translatesAutoresizingMaskIntoConstraints = false
        white.backgroundColor = .white
        white.layer.cornerRadius = 10
        return white
    }()
    
    var messageCreatedAccount: UILabel = {
        let message = UILabel()
        message.translatesAutoresizingMaskIntoConstraints = false
        message.text = "Enviamos seus dados cadastrais para o email abaixo"
        message.textColor = UIColor(red: 69/255, green: 48/255, blue: 22/255, alpha: 1)
        message.font = UIFont.systemFont(ofSize: 16)
        message.numberOfLines = 0
        message.lineBreakMode = .byWordWrapping
        return message
    }()
    
    var messageEmailSend: UILabel = {
        let messageEmail = UILabel()
        messageEmail.translatesAutoresizingMaskIntoConstraints = false
        messageEmail.text = "exemplo@gmail.com"
        messageEmail.textColor = UIColor(red: 69/255, green: 48/255, blue: 22/255, alpha: 1)
        messageEmail.font = UIFont.boldSystemFont(ofSize: 20)
        return messageEmail
    }()
    
    var goToLogin: UIButton = {
        let goTo = UIButton()
        
        goTo.translatesAutoresizingMaskIntoConstraints = false
        goTo.setTitle("Entrar", for: .normal)
        goTo.setTitleColor(UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1), for: .normal)
        goTo.backgroundColor = UIColor(red: 69/255, green: 48/255, blue: 22/255, alpha: 1)
        goTo.layer.cornerRadius = 10
        goTo.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        goTo.layer.shadowColor = UIColor.black.cgColor
        goTo.layer.shadowOpacity = 0.1
        goTo.layer.shadowOffset = CGSize(width: 0, height: 2)
        goTo.layer.shadowRadius = 2
        
        
        return goTo
    }()
    

    
    
    var whiteRoundedButtom: UIView = {
        let roundedButtom = UIView()
        roundedButtom.translatesAutoresizingMaskIntoConstraints = false
        roundedButtom.layer.borderWidth = 5
        roundedButtom.layer.borderColor = UIColor.white.cgColor
        roundedButtom.layer.cornerRadius = 10
        return roundedButtom
    }()


    override init(frame: CGRect) {
        super .init(frame: frame)
        
        self.addSubViews()
        self.addConstraintsForElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSubViews(){
        self.addSubview(self.bgDownWhite)
        self.addSubview(self.ballInverted)
        self.addSubview(self.labelBemVindo)
        self.addSubview(self.roundedSquare)
        self.addSubview(self.whiteSquare)
        self.addSubview(self.messageCreatedAccount)
        self.addSubview(self.messageEmailSend)
        self.addSubview(self.goToLogin)
    }
    
    func addConstraintsForElements(){
        NSLayoutConstraint.activate([
            
            bgDownWhite.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            bgDownWhite.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            bgDownWhite.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            bgDownWhite.heightAnchor.constraint(equalToConstant: 300),
            
            ballInverted.centerYAnchor.constraint(equalTo: bgDownWhite.bottomAnchor),
            ballInverted.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            ballInverted.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            
            labelBemVindo.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            labelBemVindo.bottomAnchor.constraint(equalTo: bgDownWhite.bottomAnchor, constant: -90),
            
            roundedSquare.topAnchor.constraint(equalTo: bgDownWhite.bottomAnchor, constant: 80),
            roundedSquare.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            roundedSquare.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            //roundedSquare.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -80),
            roundedSquare.heightAnchor.constraint(equalToConstant: 280),
            
            whiteSquare.topAnchor.constraint(equalTo: roundedSquare.topAnchor, constant: 15),
            whiteSquare.leadingAnchor.constraint(equalTo: roundedSquare.leadingAnchor, constant: 15),
            whiteSquare.trailingAnchor.constraint(equalTo: roundedSquare.trailingAnchor, constant: -15),
            whiteSquare.bottomAnchor.constraint(equalTo: roundedSquare.bottomAnchor, constant: -15),
            
            messageCreatedAccount.topAnchor.constraint(equalTo: whiteSquare.topAnchor, constant: 15),
            messageCreatedAccount.leadingAnchor.constraint(equalTo: whiteSquare.leadingAnchor, constant: 10),
            messageCreatedAccount.trailingAnchor.constraint(equalTo: whiteSquare.trailingAnchor, constant: -10),
            
            messageEmailSend.topAnchor.constraint(equalTo: messageCreatedAccount.bottomAnchor, constant: 7),
            messageEmailSend.leadingAnchor.constraint(equalTo: whiteSquare.leadingAnchor, constant: 10),
            messageEmailSend.trailingAnchor.constraint(equalTo: whiteSquare.trailingAnchor, constant: -10),
            
            goToLogin.topAnchor.constraint(equalTo: roundedSquare.bottomAnchor,constant: 50),
            goToLogin.leadingAnchor.constraint(equalTo: whiteSquare.leadingAnchor,constant: 0),
            goToLogin.trailingAnchor.constraint(equalTo: whiteSquare.trailingAnchor,constant: 0),
            goToLogin.heightAnchor.constraint(equalToConstant: 40),
            

        ])
    }
    
    
    
}


