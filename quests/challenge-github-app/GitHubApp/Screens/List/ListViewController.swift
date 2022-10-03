//
//  ViewController.swift
//  GitHubApp
//
//  Created by Rodrigo Borges on 29/09/21.
//

import UIKit

final class ListViewController: UIViewController {

    private let listView: ListView = {

        let listView = ListView()
        return listView
    }()
    
    private let searchBar: UISearchController = {
        let search = UISearchController(searchResultsController: nil)
        search.searchBar.placeholder = "Type a GitHub user name"
        return search
    }()

    private let service = Service()

    init() {
        super.init(nibName: nil, bundle: nil)

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {

        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = "Repositories"
        self.navigationItem.searchController = searchBar
    }

    override func viewDidAppear(_ animated: Bool) {
        
        service.fetchList(user: "GustavoFernandesBatista") { result in
            switch result {
            case .success(let repository):
                print(repository.count)
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

    override func loadView() {
        self.view = listView
    }
}
