//
//  NewsListViewModel.swift
//  OTUSLesson1
//
//  Created by anduser on 13.06.2023.
//

import SwiftUI

final class NewsListViewModel: ObservableObject {
    @Published var articles: [NewsModel] = []

    init() {
        nextPage()
    }

    func nextPage() {
        articles = [
            NewsModel(title: "News1", description: "Text text text text text text text"),
            NewsModel(title: "News2", description: "Text text text text text text text"),
            NewsModel(title: "News3", description: "Text text text text text text text"),
        ]
    }
}
