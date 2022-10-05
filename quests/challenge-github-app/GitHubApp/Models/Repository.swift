//
//  Repository.swift
//  GitHubApp
//
//  Created by Rodrigo Borges on 14/01/22.
//

import Foundation

struct Repository: Decodable {
    let id: Int?
    let name: String?
    let fullname: String?
    let owner: Owner
}

struct Owner: Decodable {
    let id: Int?
    let login: String?
}
