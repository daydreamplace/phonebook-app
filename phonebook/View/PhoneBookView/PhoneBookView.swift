//
//  PhoneBookView.swift
//  phonebook
//
//  Created by eden on 12/11/24.
//

import UIKit
import SnapKit

class PhoneBookView: UIView {
    // MARK: - UI Components
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 80
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        imageView.clipsToBounds = true
        imageView.backgroundColor = .systemGray6
        return imageView
    }()
    
    let randomImageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("랜덤 이미지 생성", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        button.setTitleColor(.gray, for: .normal)
        return button
    }()
    
    let nameTextView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.cornerRadius = 8
        textView.backgroundColor = .white
        return textView
    }()
    
    let phoneTextView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.cornerRadius = 8
        textView.backgroundColor = .white
        return textView
    }()
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup Methods
    private func setupUI() {
        self.addSubview(profileImageView)
        self.addSubview(randomImageButton)
        self.addSubview(nameTextView)
        self.addSubview(phoneTextView)
        
        profileImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(16)
            make.centerX.equalToSuperview()
            make.size.equalTo(160)
        }
        
        randomImageButton.snp.makeConstraints { make in
            make.top.equalTo(profileImageView.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        nameTextView.snp.makeConstraints { make in
            make.top.equalTo(randomImageButton.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(40)
        }
        
        phoneTextView.snp.makeConstraints { make in
            make.top.equalTo(nameTextView.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(40)
        }
    }
    
    
}
