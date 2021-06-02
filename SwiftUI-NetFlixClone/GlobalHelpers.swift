//
//  GlobalHelpers.swift
//  SwiftUI-NetFlixClone
//
//  Created by narendra. vadde on 20/11/20.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!

let exampleImageURL1 = URL(string: "https://picsum.photos/300/105")!

let exampleImageURL2 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL1, exampleImageURL2].randomElement() ?? exampleImageURL
}

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let episode1 = Episodes(name: "Beginings and Endings", season: 1, thumbnailImageURLString: "https://picsum.photos/300/102", description: "Six months after the dissapperences, the police form a task force. In 2052, Jonas learns that most of winden perished in an apocalyptic event", length: 53, videoURL: exampleVideoURL, episodeNumber: 1)

let episode2 = Episodes(name: "Dark Matter", season: 1, thumbnailImageURLString: "https://picsum.photos/300/107", description: "Six months after the dissapperences, the police form a task force. In 2052, Jonas learns that most of winden perished in an apocalyptic event", length: 53, videoURL: exampleVideoURL, episodeNumber: 1)

let episode3 = Episodes(name: "Ghosts", season: 1, thumbnailImageURLString: "https://picsum.photos/300/101", description: "Six months after the dissapperences, the police form a task force. In 2052, Jonas learns that most of winden perished in an apocalyptic event", length: 53, videoURL: exampleVideoURL, episodeNumber: 1)

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 1,
    /*currentEpisodeInfo: exampleEpisodeInfo1,*/
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordies Triebel",
    moreLikeThis: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7], trailers: exampleTrailers)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travellers",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 2,
    promotionalHeadline: "Best Rated Show",
    /*currentEpisodeInfo: exampleEpisodeInfo1,*/
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordies Triebel",
    moreLikeThis: [], trailers: exampleTrailers)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    /*currentEpisodeInfo: exampleEpisodeInfo1,*/
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordies Triebel",
    moreLikeThis: [], trailers: exampleTrailers)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 4,
    promotionalHeadline: "New episodes are coming soon",
    /*currentEpisodeInfo: exampleEpisodeInfo1,*/
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordies Triebel",
    moreLikeThis: [], trailers: exampleTrailers)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 5,
    /*currentEpisodeInfo: exampleEpisodeInfo1,*/
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordies Triebel",
    moreLikeThis: [], trailers: exampleTrailers)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    promotionalHeadline: "Watch Season 6 Now",
    /*currentEpisodeInfo: exampleEpisodeInfo1,*/
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordies Triebel",
    moreLikeThis: [], trailers: exampleTrailers)

let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: ["Dystopian","Exciting","Suspenseful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    promotionalHeadline: "Watch Season 6 Now",
    /*currentEpisodeInfo: exampleEpisodeInfo1,*/
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baron bo Odan, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, Jordies Triebel",
    moreLikeThis: [], trailers: exampleTrailers)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings And Endings", description: "Six months after the dissapperences, the police form a task force. In 2052, Jonas learns that most of winden perished in an apocalyptic event", season: 2, episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
