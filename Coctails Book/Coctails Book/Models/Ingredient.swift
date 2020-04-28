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
    private var ingredientName: String?
    private var ingredientMeasure: String?
    
    public init(ingredientName: String?, ingredientMeasure: String?) {
        self.ingredientName = ingredientName
        self.ingredientMeasure = ingredientMeasure
    }
    
    public func ToString()->String
    {
        if (ingredientMeasure != nil && ingredientName != nil)
        {
            return "\(ingredientMeasure!) \(ingredientName!)"
        }
        else if (ingredientName != nil)
        {
            return "\(ingredientName!)"
        }
        else
        {
            return ""
        }
    }
    
    public func getIngredientName() -> String? {
        return ingredientName;
    }
    
    public func getIngredientMeasure() -> String? {
        return ingredientMeasure;
    }
}
