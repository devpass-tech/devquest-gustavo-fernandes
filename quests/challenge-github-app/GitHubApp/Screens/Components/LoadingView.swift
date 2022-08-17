//
//  LoadingView.swift
//  GitHubApp
//
//  Created by Gustavo Fernandes on 12/08/22.
//

import UIKit

final class LoadingView: UIView {
    
    private var label: UILabel = {

        let label = UILabel()
        label.text = "No repositories found"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.darkGray
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        label.textAlignment = .center
        return label
    }()
}
