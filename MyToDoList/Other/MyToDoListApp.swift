//
//  MyToDoListApp.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import FirebaseCore
import SwiftUI

@main
struct MyToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
//            MainView()
            LoginView()
        }
    }
}
