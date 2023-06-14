//
//  NewsListScreen.swift
//  OTUSLesson1
//
//  Created by anduser on 13.06.2023.
//

import NewsAPINetworking
import SwiftUI

struct NewsListScreen: View {

    // MARK: - Properties

    @StateObject var news: NewsListViewModel = .init()

    // MARK: - Body

    var body: some View {
        ZStack {
            BackgroundView()

            List {
                ForEach(news.articles, id: \.self) { item in
                    NewsListCell(newsModel: item)
                } //: Repeat
                .listRowBackground(
                    Color(uiColor: .clear)
                )
            } //: List
            .listStyle(.plain)
        } //: ZStack
    }
}

// MARK: - Previews

struct NewsListScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewsListScreen()
    }
}
