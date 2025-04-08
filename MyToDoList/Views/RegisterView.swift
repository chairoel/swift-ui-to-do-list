//
//  RegisterView.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Headers
            HeaderView(
                title: "Register",
                subTitle: "Start organizing tods",
                angle: -15,
                background: .orange
            )
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()

                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()

                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TLButton(
                    title: "Register",
                    background: .green
                ) {
                    // Attemp Registration 
                }
                .padding()
            }
            .offset(y:-50)
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
