//
//  CityListCell.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

struct CityListCell: View {

    // MARK: - Properties

    let cityWeather: WeatherModel

    // MARK: - Body

    var body: some View {
        ZStack {
            BackgroundView()

            HStack {
                Image(systemName: cityWeather.weatherIconName)
                    .renderingMode(.original)
                    .frame(minWidth: 48, minHeight: 48)
                    .imageScale(.large)
                    .padding(.bottom, 4)

                Text("\(cityWeather.currentTemperature) °C")
                    .font(.title2)

                Text(cityWeather.cityName)
                    .padding(.leading, 16)
                    .font(.title2)

                Spacer()
            } //: HStack
            .foregroundColor(.white)
            .padding()
        .frame(alignment: .leading)
        }
    }
}

// MARK: - Previews

struct CityListCell_Previews: PreviewProvider {
    static var previews: some View {
        CityListCell(cityWeather: WeatherModel.mockWeatherList.first!)
            .previewLayout(.fixed(width: 380, height: 80))
    }
}
