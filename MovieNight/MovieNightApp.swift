//
//  MovieNightApp.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import SwiftUI

@main
struct MovieNightApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MinFedeApp()
                    .navigationTitle("Mine fede film")
                    .toolbar{
                        ToolbarItem {
                            NavigationLink {
                                Text("LOGIN")
                            } label: {
                                Text("login")
                            }
                            
                        }
                    }
            }
        }
    }
}
