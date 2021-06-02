//
//  HomeView.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 20/11/20.
//

import SwiftUI

struct HomeView: View {
    
    var viewModel = HomeViewModel()
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopRowButtonsView()
                    
                    TopMoviePreview(movie: exampleMovie2)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
                    ForEach(viewModel.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(Font.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(viewModel.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopRowButtonsView: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("neflexLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Movies")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("My List")
            })
        }
        .padding(.leading, 20)
        .padding(.trailing, 30)
    }
}
