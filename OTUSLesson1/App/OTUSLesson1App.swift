//
//  OTUSLesson1App.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 02.06.2023.
//

import SwiftUI

@main
struct OTUSLesson1App: App {

    @Environment(\.scenePhase) var scenePhase

    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(Router())
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                break

            case .inactive:
                break

            case .active:
                break

            @unknown default:
                break
            }
        }
    }
}
