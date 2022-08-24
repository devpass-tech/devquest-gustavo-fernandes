//
//  LoadingView.swift
//  GitHubApp
//
//  Created by Gustavo Fernandes on 19/08/22.
//
import UIKit

final class LoadingView: UIView {
    
    private var label: UILabel = {
        
        let label = UILabel()
        label.text = "Searching repositories…"
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
    
    private var activity: UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView()
        activity.hidesWhenStopped = true
        activity.startAnimating()
        return activity
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [label, activity])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.axis = .vertical
        stack.spacing = 10
        return stack
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
        self.addSubview(stackView)
    }
    
    private func configureConstraints() {
        
        NSLayoutConstraint.activate([
            self.stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
}


