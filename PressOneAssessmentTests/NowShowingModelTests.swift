//
//  NowShowingModelTests.swift
//  PressOneAssessmentTests
//
//  Created by Adewale Sanusi on 09/11/2023.
//

import Foundation

import XCTest
@testable import PressOneAssessment

class NowShowingTests: XCTestCase {

    func testDecodingMovieNowShowingResponse() throws {
        let json = """
        {
            "dates": {"maximum": "2023-11-10", "minimum": "2023-11-01"},
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/backdrop.jpg",
                    "genre_ids": [12, 16, 28],
                    "id": 123,
                    "original_language": "en",
                    "original_title": "Movie Title",
                    "overview": "This is a movie overview",
                    "popularity": 123.45,
                    "poster_path": "/poster.jpg",
                    "release_date": "2023-11-05",
                    "title": "Movie Title",
                    "video": false,
                    "vote_average": 8.9,
                    "vote_count": 100
                }
            ],
            "total_pages": 3,
            "total_results": 25
        }
        """

        let jsonData = json.data(using: .utf8)!
        let response = try JSONDecoder().decode(MovieNowShowingResponse.self, from: jsonData)

        XCTAssertNotNil(response)
        XCTAssertEqual(response.page, 1)
        XCTAssertEqual(response.results.count, 1)

        let movie = response.results[0]
        XCTAssertEqual(movie.id, 123)
        XCTAssertEqual(movie.title, "Movie Title")
        XCTAssertEqual(movie.releaseDate, "2023-11-05")
    }

    // Test the imageUrlString property in NowShowingMovie
    func testImageUrlString() {
        let movie = NowShowingMovie(
            adult: false,
            backdropPath: "/backdrop.jpg",
            genreIDS: [12, 16, 28],
            id: 123,
            originalLanguage: "en",
            originalTitle: "Movie Title",
            overview: "This is a movie overview",
            popularity: 123.45,
            posterPath: "/poster.jpg",
            releaseDate: "2023-11-05",
            title: "Movie Title",
            video: false,
            voteAverage: 8.9,
            voteCount: 100
        )

        XCTAssertEqual(movie.imageUrlString, Constants.imageBaseUrl + "/poster.jpg")
    }
}
