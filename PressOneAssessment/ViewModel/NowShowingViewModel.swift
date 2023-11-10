//
//  NowShowingViewModel.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import Foundation

@MainActor
class NowShowingViewModel: ObservableObject {
    @Published var movies: [NowShowingMovie] = []
    
    // https://api.themoviedb.org/3/movie/top_rated
    func fetchNowShowing() async {
        // Go to Utilities -> Constants to insert API key
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=\(Constants.apiKey)") else {
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let response = try JSONDecoder().decode(MovieNowShowingResponse.self, from: data)
            movies = response.results
            print("CONSOLE: NOWSHOWING RESULT: \(response.results)")
        } catch {
            print("Error fetching data: \(error)")
        }
    }
}




