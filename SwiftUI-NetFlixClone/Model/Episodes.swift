//
//  Episodes.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 23/11/20.
//

import Foundation

struct Episodes: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length:  Int
    var thumnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
    var videoURL: URL
    var episodeNumber: Int
    
}
