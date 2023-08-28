//
//  MovieCell.swift
//  MovieNight
//
//  Created by ksd on 28/08/2023.
//

import SwiftUI

struct MovieCell: View {
    var movie: Movie
    
    var myColor: Color {
        movie.title.count > 7 ? .blue : .yellow
    }
    
    var body: some View {
        
        HStack(alignment: .top){
            Text(movie.title)
                .foregroundColor(.white)
                .font(.headline)
            Spacer()
            Image(movie.poster)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
                .cornerRadius(15)
        }
        .padding()
        .background(myColor)
    }
}


struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(movie: Movie(title:"Alita"))
    }
}
