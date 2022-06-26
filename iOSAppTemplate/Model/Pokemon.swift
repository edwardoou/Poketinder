//
//  Pokemon.swift
//  iOSAppTemplate
//
//  Created by Alex Ramos on 26/06/22.
//

import SwiftUI

struct Pokemon: Codable{
    let count: Int?
    let next: String?
    let results: [Result]
}

struct Result: Codable{
    let name: String
    let url: String
}
