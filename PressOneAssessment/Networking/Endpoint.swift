//
//  Endpoint.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import Foundation

enum Endpoint {
    case nowPlaying, popular, genre, movieReviews(_ movield: Int), trending,  topRated
    var path: String {
        switch self {
        case .nowPlaying:
            return "//3/movie/now_playing"
        case .popular:
            return "/3/movie/popular"
        case .genre:
            return "/3/genre/movie/list"
        case .movieReviews(let movieId):
            return "/3/movie/\(movieId)"
            //
        case .topRated:
            return "/3/movie/top_rated"
        case .trending:
            return "/3/trending/movie/week"
            
        }
    }
    var fullPath: String {
        Constants.apiBaseUrl + path
    }
}
