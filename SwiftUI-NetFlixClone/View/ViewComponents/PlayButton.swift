//
//  WhiteButton.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 20/11/20.
//

import SwiftUI

struct PlayButton: View {
    
    var title: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(title)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
            }
            .padding(.vertical, 10)
            .foregroundColor(backgroundColor ==  .white ? .black : .white)
            .background(backgroundColor)
            .cornerRadius(3.0)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButton(title: "Play", imageName: "play.fill") {
                
            }
        }
    }
}
