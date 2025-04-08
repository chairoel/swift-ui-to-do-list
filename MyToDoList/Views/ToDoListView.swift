//
//  ToDoListView.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
