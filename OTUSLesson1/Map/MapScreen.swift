//
//  MapScreen.swift
//  OTUSLesson1
//
//  Created by anduser on 02.06.2023.
//

import SwiftUI

struct MapScreen: View {

    // MARK: - Properties

    @StateObject private var viewModel = MapScreenViewModel()

    // MARK: - Body

    var body: some View {
        NavigationView {
            VStack {
                Text("Details about location")
                    .font(.title2)
                    .padding()

                Button {
                    viewModel.isShowingModalView = true
                } label: {
                    Text("Show details")
                        .foregroundColor(.white)
                } //: Button
                .frame(width: 120, height: 48, alignment: .center)
                .background(Color(uiColor: .systemBlue))
                .cornerRadius(16)
            } //: VStack
            .navigationTitle("Map")
            .sheet(isPresented: $viewModel.isShowingModalView) {
                LocationDetailsScreen()
            }
        } //: NavigationView
    }
}

// MARK: - Previews

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
