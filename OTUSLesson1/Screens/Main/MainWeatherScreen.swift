//
//  MainWeatherScreen.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

struct MainWeatherScreen: View {

    // MARK: - Properties

    @EnvironmentObject var router: Router
    @ObservedObject var viewModel: MainWeatherViewModel = .init()

    // MARK: - Body

    var body: some View {
        ZStack {
            BackgroundView()

            VStack {
                TodayWeatherMainItem(weather: viewModel.currentLocationWeather)
                    .frame(maxHeight: 280)
                    .cornerRadius(30)
                    .padding(.leading, 24)
                    .padding(.trailing, 24)
                    .padding(.bottom, 24)

                CustomButton(title: "Show random weather", backGroundColor: .orange) {
                    router.selectedTab = 2
                    router.listPath.append(
                        Int.random(in: 0..<WeatherModel.mockWeatherList.count)
                    )
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
