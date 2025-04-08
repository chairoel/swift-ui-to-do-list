//
//  User.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
