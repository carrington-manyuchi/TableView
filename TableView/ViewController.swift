//
//  ViewController.swift
//  TableView
//
//  Created by DA MAC M1 157 on 2023/08/15.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Variables
    private let image: [UIImage] = [
        UIImage(named: "1")!
    ]
    
    
    //MARK: - UI Componets
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemBackground
        tableView.allowsSelection = true
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        tableView.dataSource = self
        tableView.delegate = self
    }

    //MARK: - Setup

    private func setupUI(){
        view.backgroundColor = .blue
        view.addSubview(tableView)
        configureConstraints()
    }
    
    
    private func configureConstraints() {
        
        let composeTableview = [
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        
        NSLayoutConstraint.activate(composeTableview)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Carring ton"
        return cell
        
    }
    
    
}
