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
    
    private let dummyData: [(name: String, phone: String)] = [
        ("eden", "010-1234-5678"),
        ("brie", "010-9876-5432"),
        ("eric", "010-4567-1234"),
        ("emily", "010-1111-1111"),
        ("eden", "010-1234-5678"),
        ("brie", "010-9876-5432"),
        ("eric", "010-4567-1234"),
        ("emily", "010-1111-1111"),
        ("eden", "010-1234-5678"),
        ("brie", "010-9876-5432"),
        ("eric", "010-4567-1234"),
        ("emily", "010-1111-1111")
    ]
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        mainView.tableView.dataSource = self
        mainView.tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
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
        return dummyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
            return UITableViewCell()
        }
        let data = dummyData[indexPath.row]
        cell.configure(name: data.name, phone: data.phone)
        return cell
    }
}
