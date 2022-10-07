//
//  LicenseView.swift
//  GitHubApp
//
//  Created by Gustavo Fernandes on 07/10/22.
//

import Foundation
import UIKit
    
class LicenseView: UIView {
    
    
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel(frame: .zero)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .left
        titleLabel.textColor = .black
        titleLabel.text = "Titulo"
        titleLabel.font = .systemFont(ofSize: 35)
        
        return titleLabel
    }()
    
    private lazy var licenseName: UILabel = {
        let licenseName = UILabel(frame: .zero)
        licenseName.numberOfLines = 0
        licenseName.textAlignment = . left
        licenseName.textColor = .black
        licenseName.text = "license name"
        licenseName.font = .systemFont(ofSize: 20)
        
        return licenseName
    }()
    
    private lazy var licenseCode: UILabel = {
        let licenseCode = UILabel(frame: .zero)
        licenseCode.numberOfLines = 0
        licenseCode.textAlignment = .left
        licenseCode.textColor = .black
        licenseCode.text = "code license"
        licenseCode.font = .systemFont(ofSize: 10)
        
        return licenseCode
    }()
    
    private lazy var buttonLicense: UIButton = {
        let buttonLicense = UIButton(frame: .zero)
        buttonLicense.backgroundColor = .blue
        buttonLicense.setTitle("See License", for: .normal)
        buttonLicense.layer.cornerRadius = 8
        
        return buttonLicense
    }()
    
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, licenseName, licenseCode, buttonLicense])
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
extension LicenseView: ViewConfiguration {
    func buildViewHierarchy() {
        addSubview(stackView)
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = .gray
    }
    
    
    
    
}
