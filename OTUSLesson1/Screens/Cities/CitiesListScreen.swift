//
//  CitiesListView.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

struct CitiesListScreen: View {

    // MARK: - Properties

    @ObservedObject var viewModel = CitiesListViewModel()
    @EnvironmentObject var router: Router

    // MARK: - Body
    
    var body: some View {
        NavigationStack(path: $router.listPath) {
            ZStack {
                BackgroundView()
                    .edgesIgnoringSafeArea(.all)

                List {
                    ForEach(viewModel.weatherList, id: \.id) { item in
                        NavigationLink {
                            CityDetailScreen(weather: item)
                        } label: {
                            CityListCell(cityWeather: item)
                        }
                    }
                    .listRowBackground(
                        BackgroundView()
                    )
                }
                .navigationDestination(for: Int.self, destination: { index in
                    CityDetailScreen(weather: viewModel.weatherList[index])
                })
                .navigationTitle("Weather in cities")
                .listStyle(PlainListStyle())
            } //: ZStack
        } //: NavigationView
        .accentColor(.white)
        .background(.clear)
        .onAppear() {
            setNavBarAppearance()
        }
    }

    private func setNavBarAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .brandStandard

        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactScrollEdgeAppearance = appearance
    }
}

// MARK: - Previews

struct CitiesListView_Previews: PreviewProvider {
    static var previews: some View {
        CitiesListScreen().environmentObject(Router())
    }
}
