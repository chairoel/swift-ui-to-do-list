//
//  HeaderView.swift
//  MyToDoList
//
//  Created by Chairul Amri on 26/03/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))

            VStack {
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()

                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(.white)

            }
            .padding(.top, 80)
        }
        .frame(
            width: UIScreen.main.bounds.width * 3,
            height: 350
        )
        .offset(y: -(UIScreen.main.bounds.height / 4))
    }
}

#Preview {
    HeaderView(
        title: "Title",
        subTitle: "SubTitle",
        angle: 15,
        background: .blue
    )
}
