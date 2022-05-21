//
//  PlayListDetail.swift
//  SpotifyClone
//
//  Created by MAC46 on 20/05/22.
//

import Foundation

struct PlaylistDetail: Codable {
    let name: String
    let description: String
    let followers: Followers
    let tracks: TrackDetail
    
}
struct Followers: Codable{
    let total: Int
}

struct TrackDetail: Codable{
    let items: [ItemDetail]
}

struct ItemDetail: Codable{
    let track: Track
}

struct Track: Codable{
    let album: Album
}
struct Album: Codable{
    let name: String
    let artist: [Artists]
    let images: [ImageDetail]
}

struct Artists: Codable {
    let name: String
}

struct ImageDetail: Codable{
    let height: Int?
    let url: String?
    let width: Int?
}
