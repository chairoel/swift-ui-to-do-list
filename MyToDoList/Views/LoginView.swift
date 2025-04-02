//
//  LoginView.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import SwiftUI

struct LoginView: View {

    @State var email = ""
    @State var password = ""

    var body: some View {
        NavigationView {
            VStack {
                // Headers
                HeaderView(
                    title: "To Do List",
                    subTitle: "Get things done",
                    angle: 15,
                    background: .pink
                )

                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)

                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    TLButton(
                        title: "Log In",
                        background: .blue
                    ) {
                        // Attemp Log in
                    }
                    .padding()
                }
                .offset(y: -50)

                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink(
                        "Create An Account", destination: RegisterView()
                    )
                    .padding(.bottom, 50)
                }

                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
