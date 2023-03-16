//
//  Movie.swift
//  Flixster2
//
//  Created by LE, TRONG QUOC on 3/15/23.
//

import Foundation

struct MoviesResponse: Decodable {
    var results: [Movie]
    
    static func loadJson() -> [Movie] {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MoviesResponse.self, from: data)
                return jsonData.results
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
}

struct Movie: Decodable {
    var original_title: String
    var overview: String
    var poster_path: String
    static var posterBaseURLString: String = "https://image.tmdb.org/t/p/w185"
    var vote_average: Double
    var vote_count: Int
    var popularity: Double
    
    
}
