//
//  MinFedeApp.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import SwiftUI

struct MinFedeApp: View {
    
    @State private var movies = MovieController().movies
    
    var body: some View {
        List {
            ForEach(movies) { theMovie in
                MovieCell(movie: theMovie)
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MinFedeApp()
    }
}
