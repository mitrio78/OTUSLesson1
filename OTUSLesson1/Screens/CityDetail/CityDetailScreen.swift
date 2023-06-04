//
//  CityDetailScreen.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

struct CityDetailScreen: View {

    // MARK: - Properties

    let weather: WeatherModel

    // MARK: - Body

    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                TodayWeatherMainItem(weather: weather)
                .frame(maxHeight: 280)
                .cornerRadius(30)
                .padding(.leading, 24)
                .padding(.trailing, 24)

                Spacer()
            } //: VStack
        } //: ZStack
    }
}

// MARK: - Previews

struct CityDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CityDetailScreen(weather: WeatherModel.mockWeatherList.first!)
    }
}
