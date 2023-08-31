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
                NavigationLink {
                    Text("detaljesiden for film \(theMovie.title)")
                } label: {
                    MovieCell(movie: theMovie)
                }
                .listRowSeparator(.hidden)
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            MinFedeApp()
                .navigationTitle("Demo film")
        }
    }
}
