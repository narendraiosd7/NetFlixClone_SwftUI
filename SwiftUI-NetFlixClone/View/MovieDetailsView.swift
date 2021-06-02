//
//  MovieDetailsView.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 23/11/20.
//

import SwiftUI

struct MovieDetailsView: View {
    
    var movie: Movie?
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                .padding(.horizontal, 18)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width/2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                        
                        if movie?.promotionalHeadline != nil {
                            Text(movie?.promotionalHeadline ?? "")
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(title: "Play", imageName: "play.fill", backgroundColor: .red) {
                            
                        }
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(title: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                                
                            }
                            
                            SmallVerticalButton(title: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: false) {
                                
                            }
                            
                            SmallVerticalButton(title: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                
                            }
                            
                            Spacer()
                        }
                        .padding(.leading, 20)
                    }
                    .padding(.horizontal, 10)
                }
                Spacer()
                
//                CustomTabSwitcher()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: exampleMovie6)
    }
}

struct MovieInfoSubheadline: View {
    
    var movie: Movie?
    
    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie?.year ?? 0))
            
            RatingView(rating: movie?.rating)
            
            Text(movie?.numberOfSeasonsDisplay ?? "")
            
            HDView()
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingView: View {
    
    var rating: String?
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating ?? "")
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct HDView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .border(Color.gray, width: 2)
                .cornerRadius(4.0)
            
            Text("HD")
                .font(.system(size: 14))
                .bold()
        }
        .frame(width: 30, height: 20)
    }
}

struct CastInfo: View {
    
    var movie: Movie?
    
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie?.cast ?? "")")
                Spacer()
            }
            
            HStack {
                Text("Cast: \(movie?.creators ?? "")")
                Spacer()
            }
        }
        .foregroundColor(.gray)
        .font(.caption)
        .padding(.vertical, 10)
    }
}

struct CurrentEpisodeInformation: View {
    
    var movie: Movie?
    
    var body: some View {
        Group {
            HStack {
                Text(movie?.episodeInfoDisplay ?? "")
                    .bold()
                Spacer()
            }
            .padding(.vertical, 5)
            
            HStack {
                Text(movie?.episodeDiscriptionDisplay ?? "")
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
