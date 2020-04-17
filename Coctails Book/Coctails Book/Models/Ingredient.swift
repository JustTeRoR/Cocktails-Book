//
//  Ingredient.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import Foundation

class Ingredient
{
    private var IngredientName_:String?
    private var IngredientMeasure_:String?
    
    public func Ingredient(ingredientName: String, ingredientMeasure: String)
    {
        IngredientName_ = ingredientName
        IngredientMeasure_ = ingredientMeasure
    }
    
    public func ToString()->String
    {
        if (IngredientMeasure_ != nil && IngredientName_ != nil)
        {
            return "\(IngredientMeasure_!) \(IngredientName_!)"
        }
        else if (IngredientName_ != nil)
        {
            return "\(IngredientName_!)"
        }
        else
        {
            return ""
        }
    }
    
}
