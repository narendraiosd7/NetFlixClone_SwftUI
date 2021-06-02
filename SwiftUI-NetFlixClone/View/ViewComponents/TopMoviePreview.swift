//
//  TopMoviePreview.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 20/11/20.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    
    var movie: Movie?
    
    func isCategoryLast(_ category: String) -> Bool {
        let count = movie?.categories?.count
        
        if let index = movie?.categories?.firstIndex(of: category) {
            if index + 1 != count {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie?.thumbnailURL)
                .resizable()
                .scaledToFill()
            
            VStack {
                Spacer()
                HStack {
                    ForEach((movie?.categories)!, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                .padding(.bottom, 6)
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(title: "My Lsit", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                        
                    }
                    
                    Spacer()
                    
                    PlayButton(title:"Play", imageName: "play.fill") {
                        
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(title: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true){
                        
                    }
                    
                    Spacer()
                }
            }
            .background(LinearGradient.blackOpacityGradient)
            .padding(.top, 300)
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie5)
    }
}
