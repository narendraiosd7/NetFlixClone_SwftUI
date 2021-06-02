//
//  StandardHomeMovie.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 20/11/20.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeMovie: View {
    var movie: Movie?
    
    var body: some View {
        KFImage(movie?.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
    }
}
