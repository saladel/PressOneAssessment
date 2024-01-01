//
//  PopularMoviesView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import SwiftUI

struct PopularMoviesView: View {
    @StateObject var viewModel = PopularViewModel()
    @State private var isFetchingData = false
    
    var body: some View {
        VStack(spacing: 15,content: {
            TitleName(textName: "Popular")
            
            ScrollView {
                VStack {
                    ForEach(viewModel.popularMovies, id: \.id) { popularMovie in
                        PopularMoviesCardView(popularItem: popularMovie)
                    }
                    .padding(.horizontal)
                }
            }
        })
        .task {
            if !isFetchingData {
                isFetchingData = true
                await viewModel.fetchPopularMovies()
                isFetchingData = false
            }
        }
    }
}

#Preview {
    PopularMoviesView()
}
