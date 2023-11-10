//
//  TabView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 09/11/2023.
//

import SwiftUI

struct MovieTabsView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("roll")
                }
            
            NowShowingView()
                .tabItem {
                    Image("bookmark")
                }
            
            PopularMoviesView()
                .tabItem {
                    Image("Shape")
                }
        }
    }
}

#Preview {
    MovieTabsView()
}
