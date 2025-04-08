//
//  ContentView.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                accountView
            } else {
                LoginView()
            }
            
        }
        .onAppear {
//            print("render")
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
