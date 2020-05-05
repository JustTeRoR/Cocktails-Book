//
//  RandomCocktailViewController.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

class RandomCocktailViewController: ViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var shakeImage: UIImageView!
    @IBOutlet weak var shakeLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadBackground()
       
        shakeImage.image = UIImage(named: "IPhoneShake")
        title = "RANDOM COCKTAIL"
        
    }
    
    // MARK: - Functions for handling shaking
    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            let randomCocktailDetails = CocktailDetailsViewController()
            randomCocktailDetails.shouldPresentRandomCocktail = true
            navigationController?.pushViewController(randomCocktailDetails, animated: true)
        }
    }
}

