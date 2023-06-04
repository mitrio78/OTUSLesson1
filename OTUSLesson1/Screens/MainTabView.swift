//
//  ContentView.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

// MARK: - ContentView

struct MainTabView: View {

    // MARK: - Properties

    @EnvironmentObject var router: Router

    // MARK: - Body

    var body: some View {
        TabView(selection: $router.selectedTab) {
            MainWeatherScreen()
                .tag(1)
                .tabItem {
                    Label("Weather", systemImage: "sun.haze")
                }
            CitiesListScreen()
                .tag(2)
                .tabItem {
                    Label("Cities", systemImage: "building.2.crop.circle.fill")
                }
            MapScreen()
                .tag(3)
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        } //: TabView
        .accentColor(.white)
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
            UITabBar.appearance().unselectedItemTintColor = .brandStandardLight
        }
    }
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
