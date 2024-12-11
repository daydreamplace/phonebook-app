//
//  PhoneBookViewController.swift
//  phonebook
//
//  Created by eden on 12/9/24.
//

import UIKit
import SnapKit

class PhoneBookViewController: UIViewController {
    let phoneBookView = PhoneBookView()
    
    // MARK: - Life Cycle
    override func loadView() {
        view = phoneBookView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        phoneBookView.randomImageButton.addTarget(self, action: #selector(randomImageButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - Setup Methods
    private func setupNavigationBar() {
        title = "연락처 추가"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "저장", style: .done, target: self, action: #selector(saveButtonTapped))
    }
    
    @objc
    private func saveButtonTapped() {
        print("save!!")
        // TODO : save function
    }
    
    @objc
    private func randomImageButtonTapped() {
        print("random")
        // TODO : random image function
    }
}

