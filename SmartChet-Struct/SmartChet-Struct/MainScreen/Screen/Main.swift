
import UIKit

class Main: UIView {
    
    lazy var viewBG: UIView = {
        let bg = UIView()
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.backgroundColor = UIColor(red: 255/255, green: 177/255, blue: 0/255, alpha: 1)
        bg.layer.cornerRadius = 45
        bg.layer.shadowColor = UIColor.black.cgColor
        bg.layer.shadowOpacity = 0.3
        bg.layer.shadowOffset = CGSize(width: 0, height: 3)
        bg.layer.shadowRadius = 2
        
        return bg
    }()
    
    lazy var userPhoto: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 40
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "sorria")
        
        return imageView
    }()
    
    lazy var label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Olá, Kevin Longue"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        
        return label
    }()
    
    lazy var label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Escreva seus ingredientes e descubra novas receitas"
        label.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        
        
        return label
    }()
    
    lazy var addIngredients: UITextField = {
        let add = UITextField()
        add.translatesAutoresizingMaskIntoConstraints = false
        add.backgroundColor = .white
        add.placeholder = "Ingredientes"
        add.textColor = UIColor(red: 69/255, green: 48/255, blue: 20/255, alpha: 1)
        add.layer.cornerRadius = 10
        add.layer.shadowColor = UIColor.black.cgColor
        add.layer.shadowOpacity = 0.1
        add.layer.shadowOffset = CGSize(width: 0, height: 2)
        add.layer.shadowRadius = 2
        add.keyboardType = .default
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: add.frame.height))
            add.leftView = paddingView
            add.leftViewMode = .always
        
        return add
    }()
    
    
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setElements()
        addConstraintsConfig()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setElements(){
        
        self.addSubview(self.viewBG)
        self.addSubview(self.userPhoto)
        self.addSubview(self.label1)
        self.addSubview(self.label2)
        self.addSubview(self.addIngredients)
        
    }
    
    func addConstraintsConfig(){
        NSLayoutConstraint.activate([
            
            viewBG.heightAnchor.constraint(equalToConstant: 90),
            viewBG.widthAnchor.constraint(equalToConstant: 90),
            viewBG.topAnchor.constraint(equalTo: self.topAnchor, constant: 120),
            viewBG.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
            userPhoto.heightAnchor.constraint(equalToConstant: 80),
            userPhoto.widthAnchor.constraint(equalToConstant: 80),
            userPhoto.centerXAnchor.constraint(equalTo: viewBG.centerXAnchor),
            userPhoto.centerYAnchor.constraint(equalTo: viewBG.centerYAnchor),
            
            label1.bottomAnchor.constraint(equalTo: userPhoto.bottomAnchor, constant: 0),
            label1.leadingAnchor.constraint(equalTo: userPhoto.trailingAnchor, constant: 8),
            
            label2.topAnchor.constraint(equalTo: userPhoto.bottomAnchor, constant: 16),
            label2.leadingAnchor.constraint(equalTo: userPhoto.leadingAnchor),
            label2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            
            addIngredients.heightAnchor.constraint(equalToConstant: 40),
            addIngredients.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            addIngredients.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            addIngredients.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 10),
            
        ])
        
        
    }
}
