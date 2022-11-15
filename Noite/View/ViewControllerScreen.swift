//
//  ViewControllerScreen.swift
//  Noite
//
//  Created by Marcelo Falcao Costa Filho on 14/11/22.
//

import UIKit

class ViewControllerScreen: UIView {

    lazy var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var welcomeMessage: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.backgroundColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textAlignment = .center
        label.text = "Bem vindo!" // default
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configBackGround()
        configSuperView()
        setUpConstraints()
    }
    
    func configBackGround() {
        backgroundColor = .gray
    }
    
    func configSuperView() {
        addSubview(backgroundImage)
        backgroundImage.addSubview(welcomeMessage)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            
            welcomeMessage.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            welcomeMessage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            welcomeMessage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            welcomeMessage.heightAnchor.constraint(equalToConstant: 45)
            
        ])
    }
}
