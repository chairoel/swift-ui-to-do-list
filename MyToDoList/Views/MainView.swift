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
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
