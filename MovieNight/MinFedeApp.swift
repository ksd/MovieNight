//
//  MinFedeApp.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import SwiftUI

struct MinFedeApp: View {
    
    @EnvironmentObject var movieController: MovieController
    
    var body: some View {
        List {
            ForEach(movieController.movies) { theMovie in
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
        var mc = MovieController()
        NavigationStack{
            MinFedeApp().environmentObject(mc)
                .navigationTitle("Demo film")
        }
    }
}
