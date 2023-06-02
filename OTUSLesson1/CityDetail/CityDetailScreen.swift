//
//  CityDetailScreen.swift
//  OTUSLesson1
//
//  Created by anduser on 02.06.2023.
//

import SwiftUI

struct CityDetailScreen: View {

    let weather: WeatherModel

    var body: some View {
        VStack {
            Image(systemName: weather.weatherIconName)
                .resizable()
                .scaledToFit()
                .frame(width: 120)
                .padding(.bottom, 48)
                .padding(.top, 56)

            Text("\(weather.currentTemperature) °C")
                .font(.system(size: 56, weight: .black, design: .rounded))
                .padding(.bottom)

            Text(weather.cityName)
                .font(.system(size: 32, weight: .heavy))

            Spacer()
        }
    }
}

struct CityDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CityDetailScreen(weather: WeatherModel.mockWeatherList.first!)
    }
}
