//
//  PokemonBE.swift
//  ShoeExx
//
//  Created by Alumno on 2/12/23.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let attack: Int
    let defense: Int
    let description: String
    let name: String
    let imageUrl: String
    let type: String
}
