//
//  MoreLikeThis.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 25/11/20.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]?
    
    var column = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: column) {
                ForEach(0..<(movies?.count ?? 0)) { index in
                    StandardHomeMovie(movie: movies?[index])
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
