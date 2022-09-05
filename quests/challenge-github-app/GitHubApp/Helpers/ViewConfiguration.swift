//
//  ViewConfiguration.swift
//  GitHubApp
//
//  Created by Gustavo Fernandes on 25/08/22.
//

import Foundation

protocol ViewConfiguration {
    func buildViewHierarchy()
    func setupContraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewConfiguration {
    func setupView() {
        buildViewHierarchy()
        setupContraints()
        setupAdditionalConfiguration()
    }
}
