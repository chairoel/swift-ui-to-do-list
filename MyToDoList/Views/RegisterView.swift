//
//  RegisterView.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
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
                TextField("Full Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()

                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()

                SecureField("Password", text: $password)
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
