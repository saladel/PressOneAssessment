//
//  PopularViewModel.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import Foundation

@MainActor
class PopularViewModel: ObservableObject {
    @Published var popularMovies: [PopularMovie] = []
    
    //https://api.themoviedb.org/3/movie/popular
    func fetchPopularMovies() async {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(Constants.apiKey)") else {
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
