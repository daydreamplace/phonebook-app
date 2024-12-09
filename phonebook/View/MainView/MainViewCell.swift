//
//  MainViewCell.swift
//  phonebook
//
//  Created by eden on 12/9/24.
//

import Foundation
import SnapKit

import UIKit

class TableViewCell: UITableViewCell {
    // MARK: - Initializers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup Methods
    private func setupUI() {
        
    }
}
