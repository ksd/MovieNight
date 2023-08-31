//
//  MovieCell.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import SwiftUI

struct MovieCell: View {
    var movie: Movie
    
    var body: some View {
        Image(movie.poster)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(15)
            .overlay(alignment: .bottom) {
                ZStack(alignment: .center) {
                    Color.white
                        .opacity(0.7)
                        .frame(height: 60)
                    Text(movie.title)
                        .font(.title)
                        .foregroundColor(.accentColor)
                }
                
            }
    }
}


struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(movie: Movie(title:"Alita"))
    }
}
