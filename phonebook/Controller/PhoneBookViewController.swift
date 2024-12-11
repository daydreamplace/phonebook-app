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
    let networkManager = NetworkManager()
    
    // MARK: - Life Cycle
    override func loadView() {
        view = phoneBookView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        setupActions()
    }
    
    // MARK: - Setup Methods
    private func setupNavigationBar() {
        title = "연락처 추가"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "적용", style: .done, target: self, action: #selector(saveButtonTapped))
    }
    
    private func setupActions() {
        phoneBookView.randomImageButton.addTarget(self, action: #selector(randomImageButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func saveButtonTapped() {
        print("save!!")
        // TODO : save function
    }
    
    @objc
    private func randomImageButtonTapped() {
        fetchRandomImage()
    }
    
    // MARK: - Networking Methods
    private func fetchRandomImage() {
        guard let randomNumber = (1...1000).randomElement(),
              let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(randomNumber)") else { return }
        
        networkManager.fetchData(url: url) { [weak self] (result: Pokemon?) in
            guard let self, let result else { return }
            
            self.loadRandomImage(from: result)
        }
    }
    
    private func loadRandomImage(from pokemon: Pokemon) {
        guard let pokemonImageUrl = pokemon.sprites.frontDefault,
              let imageUrl = URL(string: pokemonImageUrl) else { return }
        
        if let data = try? Data(contentsOf: imageUrl) {
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.phoneBookView.profileImageView.image = image
                }
            }
        }
    }
}

