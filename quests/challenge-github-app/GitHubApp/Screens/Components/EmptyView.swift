//
//  EmptyView.swift
//  GitHubApp
//
//  Created by Rodrigo Borges on 01/08/22.
//

import Foundation
import UIKit

final class EmptyView: UIView {
    
    private var emptyMessageLabel: UILabel = {

        let label = UILabel()
        label.text = "No repositories found"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    private var subtitleEmptyMessageLabel: UILabel = {

        let label = UILabel()
        label.text = "Search for users to see their public repositories here!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize: 15)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    init() {
        
        super.init(frame: .zero)

        self.configureSubviews()
        self.configureConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews() {
        
        self.backgroundColor = .white
        
        self.addSubview(self.emptyMessageLabel)
        self.addSubview(self.subtitleEmptyMessageLabel)
    }
    
    private func configureConstraints() {
        
        NSLayoutConstraint.activate([
            self.emptyMessageLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.emptyMessageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.emptyMessageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.emptyMessageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

            self.subtitleEmptyMessageLabel.topAnchor.constraint(equalTo: self.emptyMessageLabel.bottomAnchor , constant: 8),
            self.subtitleEmptyMessageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            self.subtitleEmptyMessageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8)
        ])
        
    }
    
}
