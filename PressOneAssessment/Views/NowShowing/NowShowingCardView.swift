//
//  NowShowingCardView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import SwiftUI
import Kingfisher

struct NowShowingCardView: View {
    let movie: NowShowingMovie
    @State private var imageColor: Color = .black // Default shadow color
    
    var body: some View {
        NavigationLink(destination: MovieDetailView(movie: movie)) {
            HStack(content: {
                LazyVStack(alignment: .leading) {
                    
                    KFImage(URL(string: "https://image.tmdb.org/t/p/original/\(movie.posterPath)"))
                        .resizable()
                        .clipShape(RoundedRectangle(cornerRadius:8))
                        .frame(width: 143, height: 212, alignment: .leading)
                        .shadow(color: imageColor.opacity(0.5), radius: 6, x: 0, y: 6)
                        
                    // movie name
                    Text(movie.title)
                        .font(Font.custom("Mulish-Bold", size: 14, relativeTo: .subheadline))
                        .fontWeight(.bold)
                        .lineLimit(1)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(Color.black)
                        .padding(.top, 5)
                        
                    // movie rating
                    TextRating(text: "\(movie.voteAverage.rounded(toDecimalPlaces: 1))/10 IMDb", imageName: "star.fill")
                }
            })
        }
    }
}

#Preview {
    NowShowingCardView(movie: NowShowingMovie(
        adult: false,
        backdropPath: "sampleBackdropPath",
        genreIDS: [1, 2],
        id: 1,
        originalLanguage: "en",
        originalTitle: "Sample Movie",
        overview: "This is a sample movie overview.",
        popularity: 7.5,
        posterPath: "samplePosterPath",
        releaseDate: "2023-11-08",
        title: "Sample Movie",
        video: false,
        voteAverage: 8.0,
        voteCount: 100
    ))
}
