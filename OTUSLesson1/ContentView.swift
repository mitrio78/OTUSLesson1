//
//  ContentView.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {

    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        TabView {
            MainWeatherScreen()
                .tabItem {
                    Label("Weather", systemImage: "sun.haze")
                }
            CitiesListScreen()
                .tabItem {
                    Label("Cities", systemImage: "building.2.crop.circle.fill")
                }
            MapScreen()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        } //: TabView
        .accentColor(.white)
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
            UITabBar.appearance().unselectedItemTintColor = UIColor(named: "brandStandardLight")
        }
    }
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
