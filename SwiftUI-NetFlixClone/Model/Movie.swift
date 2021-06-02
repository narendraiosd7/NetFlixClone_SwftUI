//
//  Movie.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 20/11/20.
//

import Foundation

struct Movie: Identifiable {
    var id: String?
    var name: String?
    var thumbnailURL: URL?
    var categories: [String]?
    var year: Int?
    var rating:String?
    var numberOfSeasons: Int?
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 Season"
            } else {
                return "\(num) Seasons"
            }
        }
        return ""
    }
    var promotionalHeadline: String?
    var episodes: [Episodes]?
    var currentEpisodeInfo: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo?
    var episodeInfoDisplay: String? {
        if let current = currentEpisodeInfo {
            return "S\(current.season ?? 1):E\(current.episode ?? 1) \(current.episodeName ?? "")"
        } else {
            return "S\(defaultEpisodeInfo?.season ?? 1):E\(defaultEpisodeInfo?.episode ?? 1) \(defaultEpisodeInfo?.episodeName ?? "")"
        }
    }
    var episodeDiscriptionDisplay: String? {
        if let current = currentEpisodeInfo {
            return current.description
        } else {
            return defaultEpisodeInfo?.description
        }
    }
    var creators: String?
    var cast: String?
    var moreLikeThis: [Movie]?
    var trailers: [Trailer]
}


struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String?
    var description: String?
    var season: Int?
    var episode: Int?
}
