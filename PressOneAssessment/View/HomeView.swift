//
//  HomeView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 06/11/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 15) {
                    NowShowingView()
                    
                    PopularMoviesView()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                // Menu
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}, label: {
                        Image("Menu")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                    })
                }
                
                // FilmKu
                ToolbarItem(placement: .principal) {
                    Button(action: {}, label: {
                        Text("FilmKu")
                            .fontWeight(.bold)
                            .foregroundStyle(Color("titletext"))
                    })
                }
                
                // Notification Bell
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {}, label: {
                        Image("Notif")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                    })
                }
            })
        }
    }
}

#Preview {
    HomeView()
}



