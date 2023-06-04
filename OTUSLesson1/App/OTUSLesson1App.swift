//
//  OTUSLesson1App.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

@main
struct OTUSLesson1App: App {

    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            MainTabView().environmentObject(Router())
        }
    }
}
