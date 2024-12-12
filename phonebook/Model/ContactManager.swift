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
    
    func saveContacts(name: String, phone: String, profileImage: Data?) {
        guard !name.isEmpty, !phone.isEmpty else {
            print("이름 또는 전화번호가 비어있습니다.")
            return
        }
        
        var contacts = fetchContacts()
        let newContact = Contact(name: name, phone: phone, profileImage: profileImage)
        print("새로운 연락처: \(newContact)")
        
        contacts.append(newContact)
        print("업데이트된 연락처 목록: \(contacts)")
        
        do {
            let encodedData = try JSONEncoder().encode(contacts)
            print("인코딩된 데이터: \(encodedData)")
            UserDefaults.standard.setValue(encodedData, forKey: userDefaultKey)
            print("UserDefaults에 저장 완료")
        } catch {
            print("연락처 저장 오류: \(error)")
        }
        
        UserDefaults.standard.synchronize()
            print("UserDefaults에 저장된 데이터: \(UserDefaults.standard.data(forKey: userDefaultKey))")
    }
    
    func fetchContacts() -> [Contact] {
        guard let savedContactsData = UserDefaults.standard.data(forKey: userDefaultKey) else {
            return []
        }
        
        do {
            let decodedContacts = try JSONDecoder().decode([Contact].self, from: savedContactsData)
            print(decodedContacts)
            return decodedContacts
        } catch {
            print("연락처 디코딩 오류: \(error)")
            return []
        }
    }
}
