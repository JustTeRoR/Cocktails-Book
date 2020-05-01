//
//  CocktailTableViewCell.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

class CocktailTableViewCell: UITableViewCell {

    @IBOutlet weak var coctailNameLabel: UILabel!
    @IBOutlet weak var coctailCategoryLabel: UILabel!
    @IBOutlet weak var coctailAlcoholicsLable: UILabel!
    @IBOutlet weak var coctailImage: UIImageView!
    
    func commonInit(image: String, coctailName: String, coctailCategory: String, coctailAlcoholic: String)
    {
        coctailNameLabel.text = coctailName
        coctailCategoryLabel.text = coctailCategory
        coctailAlcoholicsLable.text = coctailAlcoholic
        coctailImage.image = UIImage(named: image)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        selectionStyle = .none
        
    }
    
}
