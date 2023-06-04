//
//  BackgroundView.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 03.06.2023.
//

import SwiftUI

struct BackgroundView: View {

    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [
                    .brandStandard2,
                    .brandStandard
                ]
            ),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Previews

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
