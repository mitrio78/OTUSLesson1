//
//  CustomButton.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 03.06.2023.
//

import SwiftUI

struct CustomButton: View {

    // MARK: - Previews

    var title: LocalizedStringKey
    var backGroundColor: Color
    var action: () -> ()

    // MARK: - Previews

    var body: some View {
        VStack(spacing: 20) {
            Button {
                action()
            } label: {
                Text(title)
                    .frame(width: 260, height: 50, alignment: .center)
                    .background(backGroundColor)
                    .cornerRadius(10.0)
            } //: Button
        } //: VStack
        .foregroundColor(.white)
        .font(.system(size: 20, weight: .semibold, design: .default))
    }
}

// MARK: - Previews

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Title", backGroundColor: .blue, action: { })
    }
}
