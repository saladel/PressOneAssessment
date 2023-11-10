//
//  NowShowingViewModelTests.swift
//  PressOneAssessmentTests
//
//  Created by Adewale Sanusi on 09/11/2023.
//

import Foundation

import XCTest
@testable import PressOneAssessment

class NowShowingViewModelTests: XCTestCase {

    // Mock URLSession for testing
    class MockURLSession: URLSession {
        var data: Data?
        var response: URLResponse?
        var error: Error?

        init(data: Data?, response: URLResponse?, error: Error?) {
            self.data = data
            self.response = response
            self.error = error
        }

        override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
            let task = MockURLSessionDataTask {
                completionHandler(self.data, self.response, self.error)
            }
            return task
        }
    }

    // Mock URLSessionDataTask for testing
    class MockURLSessionDataTask: URLSessionDataTask {
        private let closure: () -> Void

        init(closure: @escaping () -> Void) {
            self.closure = closure
        }

        override func resume() {
            closure()
        }
    }

    // Test fetching NowShowing movies
    @MainActor func testFetchNowShowing() {
        let viewModel = NowShowingViewModel()
        let expectation = expectation(description: "NowShowing API Call")

        let mockData = """
        {
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
        """.data(using: .utf8)
        let mockResponse = HTTPURLResponse(url: URL(string: "https://example.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)
        let mockError = NSError(domain: "MockErrorDomain", code: 500, userInfo: [NSLocalizedDescriptionKey: "Mock error"])
        
        //viewModel.urlSession = MockURLSession(data: mockData, response: mockResponse, error: mockError)

        // Calling the async function
        Task {
            await viewModel.fetchNowShowing()
            expectation.fulfill()
        }

        // Wait for the expectation to be fulfilled
        waitForExpectations(timeout: 5, handler: nil)

        // Assert your expectations here
        XCTAssertTrue(viewModel.movies.contains { movie in movie.id == 238 })
    }
}
