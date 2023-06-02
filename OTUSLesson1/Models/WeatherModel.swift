//
//  WeatherModel.swift
//  OTUSLesson1
//
//  Created by anduser on 02.06.2023.
//

import Foundation

struct WeatherModel: Identifiable {
    var id = UUID()
    let cityName: String
    let currentTemperature: String
    let weatherIconName: String

    static let mockWeatherList: [WeatherModel] = [
        WeatherModel(cityName: "Saint-Petersburg", currentTemperature: "16", weatherIconName: "cloud.fill"),
        WeatherModel(cityName: "London", currentTemperature: "24", weatherIconName: "cloud.fog"),
        WeatherModel(cityName: "Moscow", currentTemperature: "14", weatherIconName: "cloud.bolt.rain"),
        WeatherModel(cityName: "New York", currentTemperature: "12", weatherIconName: "cloud.moon.fill"),
        WeatherModel(cityName: "Dubai", currentTemperature: "44", weatherIconName: "sun.max")
    ]
}
