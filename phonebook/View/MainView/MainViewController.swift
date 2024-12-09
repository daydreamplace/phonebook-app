//
//  MainViewController.swift
//  phonebook
//
//  Created by eden on 12/9/24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    // MARK: - UI Components
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "친구 목록"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        return label
    }()
    
    private let addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("추가", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.setTitleColor(.gray, for: .normal)
        button.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.rowHeight = 80
        tableView.backgroundColor = .white
        return tableView
    }()
    
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
        setupUI()
        tableView.dataSource = self
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    // MARK: - Setup Methods
    private func setupUI() {
        view.addSubview(titleLabel)
        view.addSubview(addButton)
        view.addSubview(tableView)
        
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.centerX.equalToSuperview()
        }
        
        addButton.snp.makeConstraints { make in
            make.centerY.equalTo(titleLabel)
            make.trailing.equalToSuperview().offset(-16)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(16)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    // MARK: - Actions
    @objc
    private func addButtonTapped() {
        // TODO: Implement navigation to add
        print("Tapped")
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
