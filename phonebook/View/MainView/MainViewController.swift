//
//  MainViewController.swift
//  phonebook
//
//  Created by eden on 12/9/24.
//

import UIKit

class MainViewController: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "친구 목록"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .left
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
