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
                HeaderView()

                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    Button {

                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)

                            Text("Log in")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                }

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
