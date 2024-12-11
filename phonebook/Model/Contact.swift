//
//  Contact.swift
//  phonebook
//
//  Created by eden on 12/12/24.
//

import Foundation

struct Contact: Codable {
    let name: String
    let phoneNumber: String
    let profileImageData: Data?
}
