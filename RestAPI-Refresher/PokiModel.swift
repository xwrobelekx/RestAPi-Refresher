//
//  PokiModel.swift
//  RestAPI-Refresher
//
//  Created by Kamil Wrobel on 2/21/22.
//

import Foundation

struct Pokemon: Codable {
    let name: String
    let id: Int
    let images: PokiImage
    
    private enum CodingKeys: String, CodingKey {
        case name
        case id
        case images = "sprites"
    }
}




struct PokiImage: Codable {
    let image: URL
    
    private enum CodingKeys: String, CodingKey {
        case image = "front_shiny"
    }
}




