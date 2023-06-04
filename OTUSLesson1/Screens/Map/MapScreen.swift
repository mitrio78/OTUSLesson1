//
//  MapScreen.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

struct MapScreen: View {

    // MARK: - Properties

    @StateObject private var viewModel = MapScreenViewModel()

    // MARK: - Body

    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()

                VStack {
                    Text("Details about location")
                        .font(.title)
                        .padding()

                    CustomButton(
                        title: "Show Google Map",
                        backGroundColor: Color(uiColor: .orange)) {
                            viewModel.isShowingModalView = true
                        }

                } //: VStack
                .navigationTitle("Map")
                .foregroundColor(.white)
                .sheet(isPresented: $viewModel.isShowingModalView) {
                    SafaryView(url: URL(string: "https://www.google.com/maps")!)
                }
            } //: ZStack
        } //: NavigationView
        .onAppear() {
            UINavigationBar
                .appearance()
                .largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        }
    }
}

// MARK: - Previews

struct MapScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapScreen()
    }
}
