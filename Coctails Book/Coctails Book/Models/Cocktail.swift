//
//  Cocktail.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//x

import Foundation


class Cocktail
{
    private var cocktailName_:String = ""
    private var cocktailCategory_:String = ""
    private var cocktailAlcohol_:String = ""
    private var glassForCocktail_:String = ""
    private var cocktailRecipe_:String = ""
    private var ingredientList_ = [Ingredient]()
    
    public func Cocktail(cocktailName: String, cocktailCategory: String, cocktailAlcohol: String, glassForCocktail: String, cocktailRecipe:String, ingredientList: [Ingredient])
    {
        cocktailName_ = cocktailName
        cocktailCategory_ = cocktailCategory
        cocktailAlcohol_  = cocktailAlcohol
        glassForCocktail_ = glassForCocktail
        cocktailRecipe_ = cocktailRecipe
        ingredientList_ = ingredientList
    }
    
}
