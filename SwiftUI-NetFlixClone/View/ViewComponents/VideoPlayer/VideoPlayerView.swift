//
//  VideoPlayerView.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 25/11/20.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var url: URL
    
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(url: exampleVideoURL)
    }
}
