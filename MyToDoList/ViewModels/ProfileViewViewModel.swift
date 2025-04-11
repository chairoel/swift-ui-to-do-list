//
//  ProfileViewViewModel.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel: ObservableObject {
    init() {
        
    }
    
    @Published var user: User? = nil
    @Published var stopBus: [StopBus] = []
    
    func fetchUser() {
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users").document(userId).getDocument { [weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self?.user = User(
                    id: data["id"] as? String ?? "",
                    name: data["name"] as? String ?? "",
                    email: data["email"] as? String ?? "",
                    joined: data["joined"] as? TimeInterval ?? 0
                )
            }
        }
    }
    
    func logOut() {
        do {
            try  Auth.auth().signOut()
        } catch {
            print(error)
        }
    }
    
    func fetchData() {
        guard let url = URL(string: "https://m-smpobapi-dev.transjakarta.co.id/api/v1/smpob-mobile/obu/stops?trips=10-R02") else {
            print("❌ Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("❌ Error: \(error.localizedDescription)")
                return
            }

            guard let data = data,
                  let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                print("❌ Invalid response or no data")
                return
            }

            do {
                let stopBusResponse = try JSONDecoder().decode(StopBusResponse.self, from: data)
                DispatchQueue.main.async {
                    self.stopBus = stopBusResponse.data
                }
            } catch {
                print("❌ JSON Decode Error: \(error.localizedDescription)")
            }
        }.resume()
    }

    
}
