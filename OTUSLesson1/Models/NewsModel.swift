//
//  NewsModel.swift
//  OTUSLesson1
//
//  Created by anduser on 13.06.2023.
//

import Foundation

struct NewsModel: Hashable, Identifiable {
    let id: UUID = UUID()
    let title: String
    let description: String
}
