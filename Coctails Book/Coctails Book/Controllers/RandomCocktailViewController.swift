//
//  RandomCocktailViewController.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

class RandomCocktailViewController: ViewController {

    @IBOutlet weak var shakeImage: UIImageView!
    
    @IBOutlet weak var shakeLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImageView = UIImageView(image: UIImage(named: "background"))
        backgroundImageView.frame = self.view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        self.view.addSubview(backgroundImageView)
        self.view.sendSubviewToBack(backgroundImageView)
       
        shakeImage.image = UIImage(named: "IPhoneShake")
        title = "RANDOM COCKTAIL"
        
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("shaked")
            let randomCocktailDetails = CocktailDetailsViewController()
            navigationController?.pushViewController(randomCocktailDetails, animated: true)
        }
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

