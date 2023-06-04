//
//  Router.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 04.06.2023.
//

import SwiftUI

final class Router: ObservableObject {
    @Published var listPath: NavigationPath = .init()
    @Published var selectedTab: Int = 1
}
