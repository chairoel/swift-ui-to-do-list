//
//  RegisterView.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Headers
            HeaderView(
                title: "Register",
                subTitle: "Start organizing tods",
                angle: -15,
                background: .orange
            )
            
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
