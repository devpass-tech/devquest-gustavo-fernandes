//
//  OwnerView.swift
//  GitHubApp
//
//  Created by Gustavo Fernandes on 07/10/22.
//

import Foundation
import UIKit

class OwnerView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel(frame: .zero)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        titleLabel.text = "Titulo"
        titleLabel.font = .systemFont(ofSize: 35)
        
        return titleLabel
    }()
    
    private lazy var nameAccount: UILabel = {
        let nameAccount = UILabel(frame: .zero)
        nameAccount.numberOfLines = 0
        nameAccount.textAlignment = .left
        nameAccount.textColor = .black
        nameAccount.text = "Nome da Conta"
        nameAccount.font = .systemFont(ofSize: 15)
        
        return nameAccount
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel(frame: .zero)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .left
        descriptionLabel.textColor = .black
        descriptionLabel.text = "Bio"
        descriptionLabel.font = .systemFont(ofSize: 10)
        
        return descriptionLabel
    }()
    
    private lazy var imagePerfil: UIImageView = {
        let imagePerfil = UIImageView(frame: .zero)
        imagePerfil.contentMode = .scaleAspectFill
        imagePerfil.backgroundColor = .orange
        
        return imagePerfil
    }()
    
    private lazy var buttonProfile: UIButton = {
        let buttonProfile = UIButton(frame: .zero)
        buttonProfile.backgroundColor = .blue
        buttonProfile.setTitle("See Profile", for: .normal)
        buttonProfile.layer.cornerRadius = 8
        
        return buttonProfile
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, nameAccount , descriptionLabel, buttonProfile])
        stackView.distribution = .fillProportionally
        stackView.spacing = 5
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints  = false
        
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    required init(coder:NSCoder) {
        fatalError()
    }
}
extension OwnerView: ViewConfiguration {
    
    func buildViewHierarchy() {
        addSubview(stackView)
        addSubview(imagePerfil)
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            

        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .gray
    }
    
    
    
}
