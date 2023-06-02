//
//  CityListCell.swift
//  OTUSLesson1
//
//  Created by anduser on 02.06.2023.
//

import SwiftUI

struct CityListCell: View {

    // MARK: - Properties
    let cityWeather: WeatherModel

    // MARK: - Body

    var body: some View {
        HStack {
            Text("\(cityWeather.currentTemperature) °C")

            Image(systemName: cityWeather.weatherIconName)
                    .padding(.bottom, 4)

            Text(cityWeather.cityName)
                .padding(.leading, 16)
                .font(.title3)
            
        } //: HStack
        .padding()
        .frame(alignment: .leading)
    }
}

// MARK: - Previews

struct CityListCell_Previews: PreviewProvider {
    static var previews: some View {
        CityListCell(cityWeather: WeatherModel.mockWeatherList.first!)
            .previewLayout(.fixed(width: 380, height: 80))
    }
}
