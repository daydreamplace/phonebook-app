//
//  PhoneBookViewController.swift
//  phonebook
//
//  Created by eden on 12/9/24.
//

import UIKit
import SnapKit

class PhoneBookViewController: UIViewController {
    // MARK: - UI Components
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
        fetchRandomImage()
    }
    
    private func fetchRandomImage() {
        let b = NetworkManager()
        guard let randomNumber = (1...1000).randomElement() else { return }
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(randomNumber)") else { return }
        
        b.fetchData(url: url) { [weak self] (result: Pokemon?) in
            guard let self, let result else { return }
            print(result)
            
            guard let pokemonImageUrl = result.sprites.frontDefault else { return }
            
            guard let imageUrl = URL(string: pokemonImageUrl) else { return }
            
            if let data = try? Data(contentsOf: imageUrl) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.phoneBookView.profileImageView.image = image
                    }
                }
            }
        }
    }
}

