//
//  MovieDetailView.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import SwiftUI
import Kingfisher

struct MovieDetailView: View {
    @Environment(\.dismiss) var dismiss
    let movie: NowShowingMovie
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                KFImage(URL(string: "https://image.tmdb.org/t/p/original/\(movie.posterPath)"))
                    .resizable()
                    .scaledToFit()
                
                // Movie deets
                VStack(alignment: .leading) {
                    // movie title
                    HStack {
                        Text(movie.title)
                            .font(.title3)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Image(systemName: "bookmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    .padding(.top)
                    
                    // rating
                    TextRating(text: "\(movie.voteAverage.rounded(toDecimalPlaces: 1))/10 IMDb", imageName: "star.fill")
                        .padding(.bottom, 12)
                    
                    // genre
                    HStack {
                        //GenreName(genre: "\(popularItem.m)")
                        GenreName(genre: "ACTION")
                        GenreName(genre: "ADVENTURE")
                        GenreName(genre: "FANTASY")
                    }
                    .padding(.bottom, 10)
                    
                    // length, Language, Rating
                    HStack(spacing: 67) {
                        ExtractedView(title: "Length", subTitle: "2h 34m")
                        
                        ExtractedView(title: "Language", subTitle: "English")
                        
                        ExtractedView(title: "Rating", subTitle: "PG-13")
                    }
                    .padding(.bottom)
                    
                    // description & Overview
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Description")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(movie.overview)
                            .font(.callout)
                            .opacity(0.5)
                            .lineLimit(.max)
                    }
                    
                    // Cast
                    HStack {
                        Text("Cast")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(Color("titletext"))
                        
                        Spacer()
                        
                        SeeMoreButton(label: "See more") {
                            // perform an action when the button is tapped
                        }
                    }
                    .padding(.horizontal, 4)
                    
                    // Cast Image & Name
                    HStack {
                        CastImageName(castImage: "1", castName: "Tom Holland")
                        CastImageName(castImage: "2", castName: "Zendaya")
                        CastImageName(castImage: "3", castName: "Benedict Cumberbatch")
                        CastImageName(castImage: "4", castName: "Jacon Batalon")
                    }
                    .padding(.top)
                }
                .padding(.horizontal)
            }
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                // cancel
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image("back")
                            .imageScale(.large)
                            .fontWeight(.bold)
                    }
                    .padding(.trailing)
                }
                // New Thread
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image("Union")
                            .resizable()
                            .scaledToFit()
                    }
                    .padding(.trailing)
                }
            })
        }
        .ignoresSafeArea()
    }
}

//#Preview {
//    MovieDetailView()
//}
