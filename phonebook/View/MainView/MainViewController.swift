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
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    // MARK: - Setup Methods
    private func setupUI() {
        view.addSubview(titleLabel)
        view.addSubview(addButton)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(0)
            make.centerX.equalToSuperview()
        }
        
        addButton.snp.makeConstraints { make in
            make.centerY.equalTo(titleLabel)
            make.trailing.equalToSuperview().offset(-16)
        }
    }
    
    // MARK: - Actions
    @objc
    private func addButtonTapped() {
        // TODO: Implement navigation to add
        print("Tapped")
    }
}
