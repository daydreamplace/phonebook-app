//
//  MainViewController.swift
//  phonebook
//
//  Created by eden on 12/9/24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    // MARK: - Properties
    private let mainView = MainView()
    private var contacts: [Contact] = []
    
    // MARK: - Life Cycle
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        mainView.tableView.dataSource = self
        mainView.addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        mainView.tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        loadContacts()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadContacts()
    }
    
    private func loadContacts() {
        contacts = ContactManager.shared.fetchSortedContacts()
        mainView.tableView.reloadData()
    }
    
    // MARK: - Actions
    @objc
    private func addButtonTapped() {
        let addContactVC = PhoneBookViewController()
        navigationController?.pushViewController(addContactVC, animated: true)
    }
}

// MARK: - UITableViewDataSource
extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        let data = contacts[indexPath.row]
        cell.configure(name: data.name, phone: data.phone, profileImage: data.profileImage)
        return cell
    }
}
