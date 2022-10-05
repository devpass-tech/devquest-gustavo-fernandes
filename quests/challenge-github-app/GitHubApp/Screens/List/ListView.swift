//
//  ListView.swift
//  GitHubApp
//
//  Created by Rodrigo Borges on 30/09/21.
//

import UIKit

struct ListViewConfiguration {

    let listItems: [String]
}

final class ListView: UIView {

    private let listViewCellIdentifier = "ListViewCellIdentifier"
    
    private var repositorys: [Repository] = []
    
    private lazy var tableView: UITableView = {

        let tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.register(RepositoryCellView.self, forCellReuseIdentifier: "repositoryCellView")
        tableView.dataSource = self
        return tableView
    }()
    
    var emptyView: EmptyView = {
        
        let emptyView = EmptyView()
        emptyView.translatesAutoresizingMaskIntoConstraints = false
        return emptyView
    }()

    init() {

        super.init(frame: .zero)

        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ListView {

    func setupViews() {

        backgroundColor = .white

        configureSubviews()
        configureSubviewsConstraints()
    }

    func configureSubviews() {

        addSubview(self.tableView)
        addSubview(self.emptyView)
    }

    func configureSubviewsConstraints() {

        NSLayoutConstraint.activate([

            self.tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.tableView.topAnchor.constraint(equalTo: self.topAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            self.emptyView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.emptyView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.emptyView.topAnchor.constraint(equalTo: self.topAnchor),
            self.emptyView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}

extension ListView {
    
    func updateView(with repositories: [Repository]) {
        
        self.repositorys = repositories
        self.tableView.reloadData()
        self.tableView.isHidden = false
        self.emptyView.isHidden = true
    }
}

extension ListView: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.repositorys.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "repositoryCellView", for: indexPath) as? RepositoryCellView else {
            return UITableViewCell()
        }
        
        let repository = repositorys[indexPath.row]
        cell.configure(with: repository)
        
        return cell
    }
}
