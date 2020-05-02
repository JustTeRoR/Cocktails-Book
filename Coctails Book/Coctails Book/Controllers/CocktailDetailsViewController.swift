//
//  CocktailDetailsViewController.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

class CocktailDetailsViewController: UIViewController {
    @IBOutlet weak var cocktailImage: UIImageView!
    @IBOutlet weak var cocktailName: UILabel!
    @IBOutlet weak var cocktailIngredients: UILabel!
    @IBOutlet weak var cocktailRecipe: UILabel!
    @IBOutlet weak var cocktailGlass: UILabel!
    @IBOutlet weak var cocktailCategory: UILabel!
    @IBOutlet weak var cocktailAlcohol: UILabel!
    public var cocktailModel: Cocktail!
    
    //TODO:: Create separation of random and non random cocktails.
    public var shouldPresentRandomCocktail: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(image: UIImage(named: "background"))
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
    
        loadRandomCocktail()
    }
    
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL) {
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            DispatchQueue.main.async() {
                self.cocktailImage.image = UIImage(data: data)
            }
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
        downloadImage(from: URL(string: cocktailModel.cocktailImage)!)
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

