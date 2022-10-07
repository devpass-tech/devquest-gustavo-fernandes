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
    
    private lazy var ownewView: OwnerView = {
       let ownerView = OwnerView()
        ownerView.translatesAutoresizingMaskIntoConstraints = false
        
        return ownerView
    }()
    
    private lazy var licenseView: LicenseView = {
        let licenseView = LicenseView()
        licenseView.translatesAutoresizingMaskIntoConstraints = false
        
        return licenseView
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
        addSubview(ownewView)
        addSubview(licenseView)
    }
    
    func setupContraints() {
        
        NSLayoutConstraint.activate([
        repositoryInfoView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        repositoryInfoView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        repositoryInfoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
        repositoryInfoView.heightAnchor.constraint(equalToConstant: 200),
        
        ownewView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        ownewView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ownewView.topAnchor.constraint(equalTo: repositoryInfoView.bottomAnchor, constant: 1),
        ownewView.heightAnchor.constraint(equalToConstant: 200),
        
        licenseView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        licenseView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        licenseView.topAnchor.constraint(equalTo: ownewView.bottomAnchor, constant: 1),
        licenseView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .white
    }
    
    
    
    
}
