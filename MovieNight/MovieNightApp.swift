//
//  MovieNightApp.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import SwiftUI

@main
struct MovieNightApp: App {
    
    @StateObject private var movieController = MovieController()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MinFedeApp().environmentObject(movieController)
                    .navigationTitle("Mine fede film")
                    .toolbar{
                        ToolbarItem {
                            NavigationLink {
                                Text("LOGIN")
                            } label: {
                                Text("login")
                            }
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                movieController.addMovie(Movie(title: "Frk. Smillas fornemmelse for sne"))
                            } label: {
                                Image(systemName: "plus")
                            }
                            
                        }
                    }
            }
        }
    }
}
