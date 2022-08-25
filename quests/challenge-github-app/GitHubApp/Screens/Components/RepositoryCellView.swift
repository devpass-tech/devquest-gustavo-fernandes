//
//  RepositoryCellView.swift
//  GitHubApp
//
//  Created by Gustavo Fernandes on 19/08/22.
//

import UIKit

class RepositoryCellView: UITableViewCell {
    
    static let identifier = "RepositoryCellView"
    
    private var labelName: UILabel = {
        let label = UILabel()
        label.text = "nome do repositorio"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20)
        label.numberOfLines = 0
        
        return label
    }()
    
    private var  labelUser: UILabel = {
        let label = UILabel()
        label.text = "nome do usuario"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 0
        
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [labelName, labelUser])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 2
        
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

extension RepositoryCellView: ViewConfiguration {
    func buildViewHierarchy() {
        contentView.addSubview(stackView)
    }
    
    func setupContraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.accessoryType = .disclosureIndicator
    }
}
