//
//  CitiesListViewModel.swift
//  OTUSLesson1
//
//  Created by anduser on 02.06.2023.
//

import SwiftUI

final class CitiesListViewModel: ObservableObject {

    @Published var weatherList: [WeatherModel] = WeatherModel.mockWeatherList
}
