//
//  SafaryView.swift
//  OTUSLesson1
//
//  Created by Dmitriy Grishechko on 03.06.2023.
//

import SwiftUI
import SafariServices

struct SafaryView: UIViewControllerRepresentable {

    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafaryView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafaryView>) { }
}
