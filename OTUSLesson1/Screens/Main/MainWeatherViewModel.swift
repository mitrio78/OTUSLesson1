//
//  MainWeatherViewModel.swift
//  OTUSLesson1
//
//  Created by anduser on 04.06.2023.
//

import SwiftUI

final class MainWeatherViewModel: ObservableObject {
    @Published var currentLocationWeather: WeatherModel = WeatherModel.mockWeatherList.first!
}
