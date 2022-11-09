//
//  CharactersModel.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import Foundation


struct CharacterData: Decodable {
    let results: [ResultsData]
}

struct ResultsData: Decodable {
    let id: Int
    let name: String
    let status: String
    let gender: String
    let species: String
    var image: String
    let location: LocationData
}

struct LocationData: Decodable {
    let name: String
}
