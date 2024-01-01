//
//  SwiftUIViewTEST.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 09/11/2023.
//

import SwiftUI

struct SwiftUIViewTEST: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("venom")
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading, spacing: 15) {
                    // movie title
                    HStack {
                        Text("movie.title")
                            .font(.title3)
                            .fontWeight(.bold)
                            //.padding()
                        
                        Spacer()
                        
                        Image(systemName: "bookmark")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                    }
                    .padding(.top)
                    
                    // rating
                    TextRating(text: "6.4/10 IMDb", imageName: "star.fill")
                        .padding(.bottom, 12)
                    
                    // genre
                    HStack {
                        //GenreName(genre: "\(popularItem.m)")
                        GenreName(genre: "ACTION")
                        GenreName(genre: "ADVENTURE")
                        GenreName(genre: "FANTASY")
                    }
                    .padding(.bottom, 10)
                    
                    // length, langua
                    HStack(spacing: 67) {
                        ExtractedView(title: "Length", subTitle: "2h 34m")
                        
                        ExtractedView(title: "Language", subTitle: "English")
                        
                        ExtractedView(title: "Rating", subTitle: "PG-13")
                    }
                    .padding(.bottom)
                    
                    // description
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Description")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text("With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.")
                            .font(.callout)
                            .opacity(0.5)
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
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SwiftUIViewTEST()
}

struct ExtractedView: View {
    let title: String
    let subTitle: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(Font.custom("Mulish-Regular", size: 12))
                .opacity(0.5)
            
            Text(subTitle)
                .font(Font.custom("Mulish-Medium", size: 12))
        }
    }
}

struct CastImageName: View {
    let castImage: String
    let castName: String
    var body: some View {
        VStack(alignment: .leading) {
            Image(castImage)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius:8))
                .frame(width: 80, height: 80, alignment: .leading)
            
            Text(castName)
                .font(Font.custom("Mulish-Regular", size: 12))
                .foregroundStyle(Color("titletext"))
                .multilineTextAlignment(.leading)
                .lineLimit(1)
        }
    }
}
