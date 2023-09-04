//
//  MovieController.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import Foundation

class MovieController: ObservableObject {
    @Published private(set) var movies =
        [
            Movie(title:"The Matrix"),
            Movie(title:"Inception"),
            Movie(title:"Blade Runner 2049"),
            Movie(title:"Edge of Tomorrow"),
            Movie(title:"Alita")
        ]
    
    func addMovie(_ movie: Movie) {
        movies.append(movie)
    }
}
