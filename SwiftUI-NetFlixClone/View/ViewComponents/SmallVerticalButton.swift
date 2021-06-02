//
//  SmallVerticalButton.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 20/11/20.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var title: String?
    
    var isOnImage: String?
    var isOffImage: String?
    
    var isOn: Bool?
    
    var imageName: String {
        if isOn ?? false {
            return isOnImage ?? ""
        } else {
            return isOffImage ?? ""
        }
    }
    
    
    
    
    var action: () -> Void?
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                
                Text(title ?? "")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
                    .padding(.top, 5)
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SmallVerticalButton(title: "My List",
                                isOnImage: "checkmark",
                                isOffImage: "plus",
                                isOn: false) {
                print("Tapped")
            }
        }
    }
}
