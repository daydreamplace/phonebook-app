//
//  NetworkManager.swift
//  phonebook
//
//  Created by eden on 12/11/24.
//

import Foundation

class NetworkManager {
    func fetchData<T: Decodable>(url: URL, completion: @escaping (T?) -> Void) {
        let session = URLSession(configuration: .default)
        session.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            let successRange = 200..<300
            if let response = response as? HTTPURLResponse, successRange.contains(response.statusCode) {
                guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {

                    completion(nil)
                    return
                }
                completion(decodedData)
            } else {
                completion(nil)
            }
        }.resume()
    }
}
