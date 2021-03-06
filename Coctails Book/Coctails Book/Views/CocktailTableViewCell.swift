//
//  CocktailTableViewCell.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

class CocktailTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var coctailNameLabel: UILabel!
    @IBOutlet weak var coctailCategoryLabel: UILabel!
    @IBOutlet weak var coctailAlcoholicsLable: UILabel!
    @IBOutlet weak var coctailImage: UIImageView!
    
    // MARK: - initialization of custom cell
    func commonInit(image: String, coctailName: String, coctailCategory: String, coctailAlcoholic: String)
    {
        self.coctailNameLabel.text = coctailName
        self.coctailCategoryLabel.text = coctailCategory
        self.coctailAlcoholicsLable.text = coctailAlcoholic
        self.coctailImage.downloadImage(from: URL(string: image)!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
}

