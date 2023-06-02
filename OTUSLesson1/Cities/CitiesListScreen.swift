//
//  CitiesListView.swift
//  OTUSLesson1
//
//  Created by anduser on 02.06.2023.
//

import SwiftUI

struct CitiesListScreen: View {

    // MARK: - Properties
    @ObservedObject var viewModel = CitiesListViewModel()

    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List(viewModel.weatherList) { item in
                NavigationLink {
                    CityDetailScreen(weather: item)
                } label: {
                    CityListCell(cityWeather: item)
                }
            }
        }
    }
}

// MARK: - Previews

struct CitiesListView_Previews: PreviewProvider {
    static var previews: some View {
        CitiesListScreen()
    }
}
