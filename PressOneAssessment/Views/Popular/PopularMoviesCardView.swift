//
//  PopularMoviesCardView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import SwiftUI
import Kingfisher

struct PopularMoviesCardView: View {
    let popularItem: PopularMovie
    var body: some View {
        NavigationLink(destination: PopularMovieDetailView(popularItem: popularItem)) {
            HStack(alignment: .center) {
                // Image
                KFImage(URL(string: "https://image.tmdb.org/t/p/original/\(popularItem.posterPath)"))
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .frame(width: 90, height: 130)
                
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        // title
                        Text(popularItem.originalTitle)
                            .font(Font.custom("Mulish-Bold", size: 14))
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.black)
                        
                        // rating
                        TextRating(text: "\(popularItem.voteAverage.rounded(toDecimalPlaces: 1))/10 IMDb", imageName: "star.fill")
                        
                        // genre
                        HStack {
                            //GenreName(genre: "\(popularItem.m)")
                            GenreName(genre: "HORROR")
                            GenreName(genre: "MYSTERY")
                            GenreName(genre: "THRILLER")
                        }
                        .padding(.bottom, 7)
                        
                        // time
                        HStack(alignment: .center, spacing: 5) {
                            Image(systemName: "clock")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 12, height: 12)
                            
                            Text("1h 47m")
                                .font(Font.custom("Mulish-Regular", size: 12, relativeTo: .subheadline))
                                .font(.footnote)
                            
                        }
                        .foregroundStyle(.black)
                        .opacity(0.77)
                        
                    }
                }
            }
        }
    }
}


#Preview {
    PopularMoviesCardView(popularItem: PopularMovie(adult: true, backdropPath: "", genreIds: [0, 2], id: 1, originalLanguage: "", originalTitle: "Togo", overview: "", popularity: 0.0, posterPath: "", releaseDate: "", title: "", video: false, voteAverage: 0.4, voteCount: 2))
}

