//
//  CocktailListResponse.swift
//  Cocktails Book
//
//  Created by Сергей Павленок on 4/27/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import Foundation

struct CocktailListResponse : Decodable {
    let drinks: [Cocktail]
    
    
    enum CodingKeys: String, CodingKey {
        case drinks
    }
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.drinks = try container.decode([Cocktail].self, forKey: .drinks)
    }
}
