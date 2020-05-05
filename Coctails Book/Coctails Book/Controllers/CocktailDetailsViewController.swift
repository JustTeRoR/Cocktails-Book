//
//  CocktailDetailsViewController.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

class CocktailDetailsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var cocktailImage: UIImageView!
    @IBOutlet weak var cocktailName: UILabel!
    @IBOutlet weak var cocktailIngredients: UILabel!
    @IBOutlet weak var cocktailRecipe: UILabel!
    @IBOutlet weak var cocktailGlass: UILabel!
    @IBOutlet weak var cocktailCategory: UILabel!
    @IBOutlet weak var cocktailAlcohol: UILabel!
    public var cocktailModel: Cocktail!
    
    public var shouldPresentRandomCocktail: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadBackground()
    
        if (shouldPresentRandomCocktail == true) {
            loadRandomCocktail()
        }
        else {
            setValuesToViews()
        }
    }
    
    func loadRandomCocktail()
    {
        let service = CocktailService()
        service.randomCocktail(onComplete: { [weak self] (cocktail) in
            self?.cocktailModel = cocktail
            self?.setValuesToViews()
            }) { (error) in
                print(error.localizedDescription);
        }
    }
  
    func setValuesToViews() {
        cocktailImage.downloadImage(from: URL(string: cocktailModel.cocktailImage)!)
        cocktailName.text = cocktailModel.cocktailName;
        var ingredientsSring = ""
        for ing in cocktailModel.ingredientList {
            ingredientsSring.append(ing.ToString())
        }
        cocktailIngredients.text = ingredientsSring
        cocktailRecipe.text = cocktailModel.cocktailRecipe
        cocktailGlass.text = cocktailModel.glassForCocktail
        cocktailCategory.text = cocktailModel.cocktailCategory
        cocktailAlcohol.text = cocktailModel.cocktailAlcohol
    }
}

