//
//  Cocktail.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//x

import Foundation


struct Cocktail : Codable
{
    // MARK: - class fieldss
    public var cocktailName: String
    public var cocktailCategory:String
    public var cocktailAlcohol: String
    public var glassForCocktail: String
    public var cocktailRecipe: String
    public var cocktailImage: String
    public var ingredientList: [Ingredient] = [Ingredient]()
    
    // MARK: - Coding keys
      enum CodingKeys: String, CodingKey {
        case strDrinkThumb
        case strDrink
        case strCategory
        case strAlcoholic
        case strInstructions
        case strGlass
        case strIngredient1
        case strIngredient2
        case strIngredient3
        case strIngredient4
        case strIngredient5
        case strIngredient6
        case strIngredient7
        case strIngredient8
        case strIngredient9
        case strIngredient10
        case strIngredient11
        case strIngredient12
        case strIngredient13
        case strIngredient14
        case strIngredient15
        case strMeasure1
        case strMeasure2
        case strMeasure3
        case strMeasure4
        case strMeasure5
        case strMeasure6
        case strMeasure7
        case strMeasure8
        case strMeasure9
        case strMeasure10
        case strMeasure11
        case strMeasure12
        case strMeasure13
        case strMeasure14
        case strMeasure15
      }
 
    // MARK: - Decoder
    //FIXME: Refactor this part
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cocktailName = try container.decode(String.self, forKey: .strDrink)
        self.cocktailCategory = try container.decode(String.self, forKey: .strCategory)
        self.cocktailAlcohol = try container.decode(String.self, forKey: .strAlcoholic)
        self.glassForCocktail = try container.decode(String.self, forKey: .strGlass)
        self.cocktailRecipe = try container.decode(String.self, forKey: .strInstructions)
        self.cocktailImage = try container.decode(String.self, forKey: .strDrinkThumb)
        
        let firstIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient1)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure1)))
        ingredientList.append(firstIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let secondIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient2)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure2)))
        ingredientList.append(secondIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let thirdIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient3)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure3)))
        ingredientList.append(thirdIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let fourthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient4)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure4)))
        ingredientList.append(fourthIngredient ?? Ingredient(ingredientName:nil,ingredientMeasure:nil))
        
        let fifthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient5)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure5)))
        ingredientList.append(fifthIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let sixthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient6)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure6)))
              ingredientList.append(sixthIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let seventhIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient7)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure7)))
              ingredientList.append(seventhIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let eigthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient8)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure8)))
              ingredientList.append(eigthIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let ninethIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient9)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure9)))
              ingredientList.append(ninethIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let tenthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient10)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure10)))
              ingredientList.append(tenthIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let eleventhIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient11)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure11)))
        ingredientList.append(eleventhIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let twelvethIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient12)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure12)))
        ingredientList.append(twelvethIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let thirteenthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient13)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure13)))
        ingredientList.append(thirteenthIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let fourteenthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient14)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure14)))
        ingredientList.append(fourteenthIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))
        
        let fifteenthIngredient: Ingredient? = Ingredient(ingredientName: (try? container.decode(String.self, forKey: .strIngredient15)), ingredientMeasure: (try? container.decode(String.self, forKey: .strMeasure15)))
        ingredientList.append(fifteenthIngredient ?? Ingredient(ingredientName: nil,ingredientMeasure: nil))

    }
    
    // MARK: - Encoder
    //FIXME: Refactor this part
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(cocktailName, forKey: .strDrink)
        try container.encode(cocktailCategory, forKey: .strCategory)
        try container.encode(cocktailAlcohol, forKey: .strAlcoholic)
        try container.encode(glassForCocktail, forKey: .strGlass)
        try container.encode(cocktailRecipe, forKey: .strInstructions)
        
        try container.encode(ingredientList[0].getIngredientName(), forKey: .strIngredient1)
        try container.encode(ingredientList[0].getIngredientMeasure(), forKey: .strMeasure1)
        
        try container.encode(ingredientList[1].getIngredientName(), forKey: .strIngredient2)
        try container.encode(ingredientList[1].getIngredientMeasure(), forKey: .strMeasure2)
        
        try container.encode(ingredientList[2].getIngredientName(), forKey: .strIngredient3)
        try container.encode(ingredientList[2].getIngredientMeasure(), forKey: .strMeasure3)
        
        try container.encode(ingredientList[3].getIngredientName(), forKey: .strIngredient4)
        try container.encode(ingredientList[3].getIngredientMeasure(), forKey: .strMeasure4)
        
        try container.encode(ingredientList[4].getIngredientName(), forKey: .strIngredient5)
        try container.encode(ingredientList[4].getIngredientMeasure(), forKey: .strMeasure5)
        
        try container.encode(ingredientList[5].getIngredientName(), forKey: .strIngredient6)
        try container.encode(ingredientList[5].getIngredientMeasure(), forKey: .strMeasure6)
        
        try container.encode(ingredientList[6].getIngredientName(), forKey: .strIngredient7)
        try container.encode(ingredientList[6].getIngredientMeasure(), forKey: .strMeasure7)
        
        try container.encode(ingredientList[7].getIngredientName(), forKey: .strIngredient8)
        try container.encode(ingredientList[7].getIngredientMeasure(), forKey: .strMeasure8)
        
        try container.encode(ingredientList[8].getIngredientName(), forKey: .strIngredient9)
        try container.encode(ingredientList[8].getIngredientMeasure(), forKey: .strMeasure9)
        
        try container.encode(ingredientList[9].getIngredientName(), forKey: .strIngredient10)
        try container.encode(ingredientList[9].getIngredientMeasure(), forKey: .strMeasure10)
        
        try container.encode(ingredientList[10].getIngredientName(), forKey: .strIngredient11)
        try container.encode(ingredientList[10].getIngredientMeasure(), forKey: .strMeasure11)
        
        try container.encode(ingredientList[11].getIngredientName(), forKey: .strIngredient12)
        try container.encode(ingredientList[11].getIngredientMeasure(), forKey: .strMeasure12)
        
        try container.encode(ingredientList[12].getIngredientName(), forKey: .strIngredient13)
        try container.encode(ingredientList[12].getIngredientMeasure(), forKey: .strMeasure13)
        
        try container.encode(ingredientList[13].getIngredientName(), forKey: .strIngredient14)
        try container.encode(ingredientList[13].getIngredientMeasure(), forKey: .strMeasure14)
        
        try container.encode(ingredientList[14].getIngredientName(), forKey: .strIngredient15)
        try container.encode(ingredientList[14].getIngredientMeasure(), forKey: .strMeasure15)
    }
}

