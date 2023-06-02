//
//  CitiesListView.swift
//  OTUSLesson1
//
//  Created by anduser on 02.06.2023.
//

import SwiftUI

struct CitiesListScreen: View {

    // MARK: - Properties

    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                CityListCell()
            }
        }
    }
}

// MARK: - Previews

struct CitiesListView_Previews: PreviewProvider {
    static var previews: some View {
        CitiesListScreen()
    }
}
