//
//  Movie.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID().uuidString
    
    var title: String
    var poster: String {
        title
    }
}
