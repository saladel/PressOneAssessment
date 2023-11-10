//
//  MovieDetailViewModel.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 09/11/2023.
//

import Foundation


class MovieDetailViewModel: ObservableObject {
    @Published var popularMovies: [PopularMovie] = []
    
    func fetchNowShowingMovieDetails() async {
        //https://api.themoviedb.org/3/movie/975902
    //https://api.themoviedb.org/3/movie/{movie_id}
        // Go to Utilities -> Constants to insert API key
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/{movie_id}?api_key=\(Constants.apiKey)&language=en-US") else {
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(PopularMovieResponse.self, from: data)
            popularMovies = response.results
            print("CONSOLE: POPULAR MOVIE RESULT: \(response.results)")
        } catch {
            print("Error fetching data: \(error)")
        }
    }
}


