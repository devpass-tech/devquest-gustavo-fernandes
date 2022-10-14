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
    
    private lazy var ownerView: OwnerView = {
       let ownerView = OwnerView()
        ownerView.translatesAutoresizingMaskIntoConstraints = false
        
        return ownerView
    }()
    
    private lazy var licenseView: LicenseView = {
        let licenseView = LicenseView()
        licenseView.translatesAutoresizingMaskIntoConstraints = false
        
        return licenseView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [repositoryInfoView, ownerView, licenseView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 5
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
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
        addSubview(stackView)
    }
    
    func setupContraints() {
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            repositoryInfoView.heightAnchor.constraint(equalToConstant: 150),
            ownerView.heightAnchor.constraint(equalToConstant: 150),
            licenseView.heightAnchor.constraint(equalToConstant: 150)
            
        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
    
    
    
}
