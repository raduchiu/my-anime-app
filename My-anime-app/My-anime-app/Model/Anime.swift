//
//  Anime.swift
//  My-anime-app
//
//  Created by Raduchiu da Costa Amaral on 20/06/23.
//

import Foundation

public struct AnimeDataResponse: Codable {
    
    let data: [Anime]

}

struct Anime: Codable  {
    let malId: Int
    let title: String
    let images: JPG
}

struct JPG: Codable {
    let imageUrl: String?
    let largeImageUrl: String?
}


let image = JPG(imageUrl: "", largeImageUrl: "https://cdn.myanimelist.net/images/anime/10/73274l.jpg")

let animePreview = Anime(malId: 918, title: "Gintama", images: image)
