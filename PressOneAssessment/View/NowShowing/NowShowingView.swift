//
//  NowShowingView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import SwiftUI

struct NowShowingView: View {
    @ObservedObject var viewModel = NowShowingViewModel()
    @State private var isFetchingData = false
    
    var body: some View {
        LazyVStack {
            TitleName(textName: "Now Showing")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(viewModel.movies, id: \.id) { movie in
                        NowShowingCardView(movie: movie)
                    }
                }
            }
            .padding(.horizontal)
        }
        .task {
            if !isFetchingData {
                isFetchingData = true
                await viewModel.fetchNowShowing()
                isFetchingData = false
            }
        }
    }
}

#Preview {
    NowShowingView()
}

// Given (Arrange)
// When (Act)
// Then (Assert)
