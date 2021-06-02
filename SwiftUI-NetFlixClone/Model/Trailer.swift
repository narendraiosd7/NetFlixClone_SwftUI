//
//  Trailer.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 25/11/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
