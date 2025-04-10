//
//  ToDoListItem.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title : String
    let dueDate: TimeInterval
    let createddate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state:Bool){
        isDone = state
    }
}
