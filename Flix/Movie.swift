//
//  Movie.swift
//  Flix
//
//  Created by Allison Reiss on 12/17/17.
//  Copyright © 2017 Allison Reiss. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var releaseDate: String?
    var overview: String?
    var rating: NSNumber
    
    var baseURLString: String?
    var posterPathString: String?
    var backDropPathString: String?
    var posterURL: URL?
    var backDropURL: URL?
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        releaseDate = dictionary["release_date"] as? String ?? "No Date"
        overview = dictionary["overview"] as? String ?? "No Description"
        rating = (dictionary["vote_average"] as? NSNumber)!
        
        //Get the poster and backdrop images
        baseURLString = "https://image.tmdb.org/t/p/w500"
        posterPathString = dictionary["poster_path"] as? String
        backDropPathString = dictionary ["backdrop_path"] as? String
        posterURL = URL(string: baseURLString! + posterPathString!)
        backDropURL = URL(string: baseURLString! + backDropPathString!)
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        return movies
    }
}
