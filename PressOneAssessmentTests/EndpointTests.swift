//
//  EndpointTests.swift
//  PressOneAssessmentTests
//
//  Created by Adewale Sanusi on 09/11/2023.
//

import Foundation

import XCTest
@testable import PressOneAssessment

class EndpointTests: XCTestCase {
    // testing all endpoints
    func testNowPlayingEndpoint() {
        let endpoint = Endpoint.nowPlaying
        XCTAssertEqual(endpoint.path, "//3/movie/now_playing")
        XCTAssertEqual(endpoint.fullPath, Constants.apiBaseUrl + "//3/movie/now_playing")
    }

    func testPopularEndpoint() {
        let endpoint = Endpoint.popular
        XCTAssertEqual(endpoint.path, "/3/movie/popular")
        XCTAssertEqual(endpoint.fullPath, Constants.apiBaseUrl + "/3/movie/popular")
    }

    func testGenreEndpoint() {
        let endpoint = Endpoint.genre
        XCTAssertEqual(endpoint.path, "/3/genre/movie/list")
        XCTAssertEqual(endpoint.fullPath, Constants.apiBaseUrl + "/3/genre/movie/list")
    }

    func testMovieReviewsEndpoint() {
        let movieId = 123
        let endpoint = Endpoint.movieReviews(movieId)
        XCTAssertEqual(endpoint.path, "/3/movie/\(movieId)")
        XCTAssertEqual(endpoint.fullPath, Constants.apiBaseUrl + "/3/movie/\(movieId)")
    }

    func testTopRatedEndpoint() {
        let endpoint = Endpoint.topRated
        XCTAssertEqual(endpoint.path, "/3/movie/top_rated")
        XCTAssertEqual(endpoint.fullPath, Constants.apiBaseUrl + "/3/movie/top_rated")
    }

    func testTrendingEndpoint() {
        let endpoint = Endpoint.trending
        XCTAssertEqual(endpoint.path, "/3/trending/movie/week")
        XCTAssertEqual(endpoint.fullPath, Constants.apiBaseUrl + "/3/trending/movie/week")
    }
}
