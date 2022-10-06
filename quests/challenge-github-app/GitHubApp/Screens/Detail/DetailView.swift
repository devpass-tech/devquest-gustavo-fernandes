//
//  DetailView.swift
//  GitHubApp
//
//  Created by Rodrigo Borges on 07/01/22.
//

import UIKit

class DetailView: UIView {
    
    private lazy var repositoryInfoView: RepositoryInfoView = {
        let repositoryInfoView = RepositoryInfoView()
        repositoryInfoView.translatesAutoresizingMaskIntoConstraints = false
        
        return repositoryInfoView
    }()
    
    init() {
        super.init(frame: .zero)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}


extension DetailView: ViewConfiguration {
    
    func buildViewHierarchy() {
        addSubview(repositoryInfoView)
    }
    
    func setupContraints() {
        
        NSLayoutConstraint.activate([
        repositoryInfoView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
        repositoryInfoView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
        repositoryInfoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
        repositoryInfoView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
    
    
    
}
