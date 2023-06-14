//
//  NewsListCell.swift
//  OTUSLesson1
//
//  Created by anduser on 13.06.2023.
//

import SwiftUI

struct NewsListCell: View {

    // MARK: - Properties
    let newsModel: NewsModel

    // MARK: - Body

    var body: some View {
        ZStack {

            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.brandStandardLight)

            VStack {
                Text(newsModel.title)
                    .font(.system(size: 20, weight: .semibold))

                Text(newsModel.description)
                    .font(.system(size: 18, weight: .light, design: .serif))
            } //: VStack
            .padding()
        } //: ZStack
    }
}

// MARK: - Previews

struct NewsListCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCell(
            newsModel: NewsModel(
                title: "News!",
                description: "Lorem Ipsum dolor Sit amed!"
            )
        )
    }
}
