//
//  ContactManager.swift
//  phonebook
//
//  Created by eden on 12/12/24.
//

import Foundation

class ContactManager {
    static let shared = ContactManager()
    
    private let userDefaultKey = "contacts"
    
    func saveContacts(name: String, phone: String, image: Data?) {
        guard !name.isEmpty, !phone.isEmpty else {
            print("이름 또는 전화번호가 비어있습니다.")
            return
        }
        
        var contacts = fetchContacts()
        let newContact = Contact(name: name, phoneNumber: phone, profileImageData: image)
        
        contacts.append(newContact)
        
        if let encoded = try? JSONEncoder().encode(contacts) {
            UserDefaults.standard.setValue(encoded, forKey: userDefaultKey)
        }
    }
    
    func fetchContacts() -> [Contact] {
        
    }
}
