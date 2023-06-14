//
//  OTUSButton.swift
//  
//
//  Created by anduser on 13.06.2023.
//

import SwiftUI

public struct OTUSButton<Content>: View where Content: View {

    // MARK: - Properties
    let color: Color
    let action: () -> Void
    let content: () -> Content

    @State var bgOpacity: Double = 1

    public init(
        color: Color,
        action: @escaping () -> Void,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.color = color
        self.action = action
        self.content = content
    }

    // MARK: - Body

    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 6)
                .foregroundColor(color)
                .opacity(bgOpacity)

            HStack {
                content()
            } //: HStack
            .padding(.horizontal, 14)
            .padding(.vertical, 14)
        } //: ZStack
        .fixedSize(horizontal: true, vertical: true)
        .gesture(
            DragGesture(minimumDistance: 0.0, coordinateSpace: .global)
                .onChanged { _ in
                    withAnimation {
                        bgOpacity = 0.5
                    }
                }
                .onEnded { _ in
                    bgOpacity = 1
                    action()
                }
        )
    } //: View
}

// MARK: - Previews

struct OTUSButton_Previews: PreviewProvider {
    static var previews: some View {
        OTUSButton<Text>(color: Color.blue, action: { }) {
            Text("Push me")
        }
    }
}
