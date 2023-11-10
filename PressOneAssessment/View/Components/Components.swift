//
//  Components.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import Foundation
import SwiftUI

struct TitleName: View {
    let textName: String
    var body: some View {
        HStack {
            Text(textName)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color("titletext"))
            
            Spacer()
            
            SeeMoreButton(label: "See more") {
                // Action
            }
        }
        .padding(.horizontal, 20)
    }
}

struct SeeMoreButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.caption2)
                .fontWeight(.semibold)
                .foregroundStyle(Color("seemore"))
                .opacity(0.6)
                .padding(5)
                .padding(.horizontal, 8)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 1.5)
                        .foregroundStyle(Color("seemore"))
                        .opacity(0.6)
                )
        }
    }
}

// genre
struct GenreName: View {
    let genre: String
    var body: some View {
        Text(genre)
            .font(.caption2)
            .fontWeight(.semibold)
            .foregroundStyle(Color("gentext"))
            .padding(6)
            .padding(.horizontal, 7)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(Color("genre"))
            )
    }
}

// rating
struct TextRating: View {
    let text: String
    let imageName: String
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
            //.scaledToFit()Ω
                .frame(width: 15, height: 15)
                .foregroundStyle(.orange)
            
            Text(text)
                .font(.body)
                .foregroundStyle(.gray)
        }
    }
}

struct ActorProfile: View {
    let actorName: String
    let imageText: String
    var body: some View {
        VStack(alignment: .leading) {
            Image(imageText)
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            Text(actorName)
                .multilineTextAlignment(.leading)
                .lineLimit(1)
        }
    }
}



//Text (String(format: "%.1f", trendingItem.vote_average))


/*
 /*
  .overlay(alignment: .topLeading) {
      Button {
          dismiss()
      } label: {
          Image("back")
              .imageScale(.large)
              .fontWeight(.bold)
      }
      .padding(.leading)
  }
  // three dots buttun
  .overlay(alignment: .topTrailing) {
      
  }
  */


 /*
  struct PopularMoviesCardView: View {
      let popularItem: Movie
      var body: some View {
          HStack(alignment: .center) {
              // Image
              Image("venom")
                  .resizable()
                  .clipShape(RoundedRectangle(cornerRadius:8))
                  .frame(width: 90, height: 130)
                  
              VStack(alignment: .leading) {
                  Text(popularItem.originalTitle)
                      .font(.title3)
                      .fontWeight(.medium)
                      .multilineTextAlignment(.leading)
                      .lineLimit(5)
                  
                  
                  
                  // rating
                  TextRating(text: "6.4/10 IMDb", imageName: "star.fill")
                  
                  // genre
                  HStack {
                      GenreName(genre: "HORROR")
                      GenreName(genre: "MYSTERY")
                      GenreName(genre: "THRILLER")
                  }
                  
                  // time
                  HStack {
                      Image(systemName: "clock")
                      Text("1h 47m")
                  }
              }
          }
      }
  }


  #Preview {
      PopularMoviesCardView(popularItem: Movie(adult: true, backdropPath: "", genreIds: [27, 13], id: 1, originalLanguage: "en", originalTitle: "Subzero", overview: "You have eyes", popularity: 0.0, posterPath: "", releaseDate: "", title: "", video: true, voteAverage: 0.0, voteCount: 8))
  }
  */

 //                if let posterURL = URL(string: "https://image.tmdb.org/t/p/original/\(movie.posterPath)") {
 //                    AsyncImage(url: posterURL) { image in
 //                        image
 //                            .resizable()
 //                            .scaledToFit() // Use scaledToFit to maintain the aspect ratio
 //                            .frame(width: 80, height: 120)
 //                    } placeholder: {
 //                        ProgressView()
 //                            .frame(width: 80, height: 120)
 //                    }
 //                    .clipped()
 //                    .cornerRadius(10)
 //                } else {
 //                    // Handle the case when the URL is invalid or nil
 //                    Text("Invalid URL")
 //                        .frame(width: 80, height: 120)
 //                        .background(Color.gray)
 //                }


 // movie image
 //                Image("venom")
 //                    .resizable()
 //                    .clipShape(RoundedRectangle(cornerRadius:8))
 //                    .frame(width: 143, height: 212, alignment: .leading)

 
 // genre
 struct GenreName: View {
 let genre: String
 var body: some View {
 Text(genre)
 .font(.caption2)
 .fontWeight(.semibold)
 .foregroundStyle(Color("gentext"))
 .padding(6)
 .padding(.horizontal, 7)
 .background(
 RoundedRectangle(cornerRadius: 20)
 .foregroundStyle(Color("genre"))
 )
 }
 }
 
 // rating
 struct TextRating: View {
 let text: String
 let imageName: String
 var body: some View {
 HStack {
 Image(systemName: imageName)
 .resizable()
 //.scaledToFit()
 .frame(width: 15, height: 15)
 .foregroundStyle(.orange)
 
 Text(text)
 .font(.body)
 .foregroundStyle(.gray)
 }
 }
 }
 
 
 
 // InfoView(imageName: "star.fill", text: "6.4/10 IMDb", imageColor: .orange, textColor: .gray)
 
 struct InfoView: View {
 let imageName: String
 let text: String
 let imageColor: Color
 let textColor: Color
 
 var body: some View {
 HStack {
 Image(systemName: imageName)
 .resizable()
 .scaledToFit()
 .frame(width: 12, height: 12)
 .foregroundStyle(imageColor)
 
 Text(text)
 .font(.body)
 .foregroundStyle(textColor)
 }
 }
 }
 
 struct InfoView: View {
 let imageName: String
 let text: String
 let imageColor: Color
 let textColor: Color
 
 var body: some View {
 HStack {
 Image(systemName: imageName)
 .resizable()
 .scaledToFit()
 .frame(width: 12, height: 12)
 .foregroundStyle(imageColor)
 
 Text(text)
 .font(.body)
 .foregroundStyle(textColor)
 }
 }
 }
 
 struct ExtractedView: View {
 let textName: String
 let buttonLabel: String
 let buttonAction: () -> Void
 
 init(labelText: String, buttonLabel: String, buttonAction: @escaping () -> Void) {
 self.labelText = labelText
 self.buttonLabel = buttonLabel
 self.buttonAction = buttonAction
 }
 
 var body: some View {
 HStack {
 Text(textName)
 .font(.largeTitle)
 .fontWeight(.semibold)
 .foregroundStyle(Color("poptext"))
 
 Spacer()
 
 SeeMoreButton(label: buttonLabel, action: buttonAction)
 }
 .padding(.horizontal)
 }
 }
 
 struct SeeMoreButton: View {
 let label: String
 let action: () -> Void
 
 var body: some View {
 Button(action: action) {
 Text(label)
 .font(.caption2)
 .fontWeight(.semibold)
 .foregroundStyle(Color("gentext"))
 .padding(10)
 .padding(.horizontal, 8)
 .background(
 RoundedRectangle(cornerRadius: 20)
 .stroke(lineWidth: 2)
 .foregroundStyle(Color("genre"))
 )
 }
 }
 }
 */


/*
 .navigationBarTitleDisplayMode(.inline)
 //.navigationTitle("Popular")
 .toolbar(content: {
 // popular
 ToolbarItem(placement: .topBarLeading) {
 Text("Popular")
 .font(.largeTitle)
 .fontWeight(.semibold)
 }
 // See more
 ToolbarItem(placement: .topBarTrailing) {
 Button(action: {}, label: {
 Text("See more")
 .font(.caption2)
 .fontWeight(.semibold)
 .foregroundStyle(Color("gentext"))
 .padding(10)
 .padding(.horizontal, 8)
 .background(
 RoundedRectangle(cornerRadius: 20)
 .stroke(lineWidth: 2)
 .foregroundStyle(Color("genre"))
 
 )
 })
 }
 })
 
 
 
 .toolbar(content: {
 ToolbarItem() {
 HStack {
 Text("Popular")
 .font(.title) // Customize font and style as needed
 .foregroundColor(Color("gentext"))
 Button(action: {
 // Action for the "See more" button
 }) {
 Text("See more")
 .font(.caption2)
 .fontWeight(.semibold)
 .foregroundStyle(Color("gentext"))
 .padding(10)
 .padding(.horizontal, 8)
 .background(
 RoundedRectangle(cornerRadius: 20)
 .stroke(lineWidth: 2)
 .foregroundStyle(Color("genre"))
 )
 }
 }
 }
 })
 */

/*
 import Foundation
 
 let headers = [
 "accept": "application/json",
 "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwZjY3NTI5ODRlMDg4OGU5NWQyYzAyZTc5NzQ1ZWFkYSIsInN1YiI6IjY1NGFlZDEzNmJlYWVhMDBlYWY5ZTMwMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.93vKLuhuyqOdstc0Zn0ddaPkApumSleWAAnekPF-i7c"
 ]
 
 let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/authentication")! as URL,
 cachePolicy: .useProtocolCachePolicy,
 timeoutInterval: 10.0)
 request.httpMethod = "GET"
 request.allHTTPHeaderFields = headers
 
 let session = URLSession.shared
 let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
 if (error != nil) {
 print(error as Any)
 } else {
 let httpResponse = response as? HTTPURLResponse
 print(httpResponse)
 }
 })
 */
