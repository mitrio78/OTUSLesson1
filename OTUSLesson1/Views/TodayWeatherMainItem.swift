//
//  TodayWeatherMainItem.swift
//  WeatherAppNew
//
//  Created by Dmitriy Grishechko on 13.04.2023.
//

import SwiftUI

struct TodayWeatherMainItem: View {

    // MARK: - Properties
    
    let weather: WeatherModel

    // MARK: - Body

    var body: some View {
        VStack {
            ZStack {
                Color(.white)
                    .opacity(0.1)
                    .blur(radius: 100)

                VStack {
                    Text(weather.cityName)
                        .font(.title)

                    HStack {
                        Image(systemName: weather.weatherIconName)
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 88)
                            .padding(.trailing, 12)

                        Text("\(weather.currentTemperature) °C")
                            .font(.system(size: 82, weight: .thin))
                    } //: HStack

                    Text(weather.description)
                    Text("max: \(weather.maxTemp)°, min: \(weather.minTemp)°")
                } //: VStack
                .foregroundColor(.white)
            } //: ZStack
        } //: VStack
    }
}

// MARK: - Previews

struct TodayWeatherMainItem_Previews: PreviewProvider {
    static var previews: some View {
        TodayWeatherMainItem(weather: WeatherModel.mockWeatherList.first!)
            .background(BackgroundView())
    }
}
