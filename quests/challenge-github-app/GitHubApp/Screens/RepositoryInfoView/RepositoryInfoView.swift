//
//  RepositoryInfoView.swift
//  GitHubApp
//
//  Created by Gustavo Fernandes on 06/10/22.
//

import Foundation
import UIKit

class RepositoryInfoView: UIView {
    
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel(frame: .zero)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        titleLabel.text = "Titulo do Repositorio"
        titleLabel.font = .systemFont(ofSize: 35)
        return titleLabel
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel(frame: .zero)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = .black
        descriptionLabel.text = "Descricao do Repositorio"
        descriptionLabel.textAlignment = .left
        descriptionLabel.font = .systemFont(ofSize: 20)
        return descriptionLabel
    }()
    
    private lazy var starsLabel: UILabel = {
        let starsLabel = UILabel(frame: .zero)
        starsLabel.textColor = .black
        starsLabel.textAlignment = .left
        starsLabel.text = "estrelas e bifurcacoes"
        starsLabel.numberOfLines = 0
        starsLabel.font = .systemFont(ofSize: 10)
        
        return starsLabel
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel, starsLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally

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
extension RepositoryInfoView: ViewConfiguration{
    func buildViewHierarchy() {
        addSubview(stackView)
        
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = .cyan
    }
    
    
    
    
}
