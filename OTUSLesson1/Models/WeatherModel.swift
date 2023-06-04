//
//  WeatherModel.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import Foundation

struct WeatherModel: Hashable, Identifiable {
    var id = UUID()
    let cityName: String
    let currentTemperature: Int
    let weatherIconName: String
    let description: String
    let minTemp: Int
    let maxTemp: Int

    static let mockWeatherList: [WeatherModel] = [
        WeatherModel(
            cityName: "Moscow, Russia",
            currentTemperature: -16,
            weatherIconName: "cloud.sun.fill",
            description: "Almost cloudy",
            minTemp: -17,
            maxTemp: -8
        ),
        WeatherModel(
            cityName: "Saint-Petersburg, Russia",
            currentTemperature: 16,
            weatherIconName: "cloud.fill",
            description: "Cloudy",
            minTemp: 7,
            maxTemp: 18
        ),
        WeatherModel(
            cityName: "London, GB",
            currentTemperature: 24,
            weatherIconName: "cloud.fog.fill",
            description: "Clouds and fog",
            minTemp: 17,
            maxTemp: 24
        ),
        WeatherModel(
            cityName: "New York, USA",
            currentTemperature: 12,
            weatherIconName: "cloud.moon.fill",
            description: "Moonlight",
            minTemp: 0,
            maxTemp: 13
        ),
        WeatherModel(
            cityName: "Dubai, AE",
            currentTemperature: 38,
            weatherIconName: "sun.max.fill",
            description: "Sunny",
            minTemp: 24,
            maxTemp: 40
        )
    ]
}
