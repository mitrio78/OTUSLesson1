//
//  MainWeatherScreen.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

struct MainWeatherScreen: View {

    // MARK: - Properties

    // MARK: - Body

    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                TodayWeatherMainItem(weather: WeatherModel.mockWeatherList.first!)
                    .frame(maxHeight: 280)
                    .cornerRadius(30)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                    .padding(.bottom, 24)

                CustomButton(title: "Show London weather", backGroundColor: .orange) {
                    // some action
                }

                Spacer()
            } //: VStack
        } //: ZStack
    }
}

// MARK: - Previews

struct MainWeatherScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainWeatherScreen()
    }
}
