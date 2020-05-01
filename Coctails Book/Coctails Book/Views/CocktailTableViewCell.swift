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
        self.coctailNameLabel.text = coctailName
        self.coctailCategoryLabel.text = coctailCategory
        self.coctailAlcoholicsLable.text = coctailAlcoholic
        //self.coctailImage.
        downloadImage(from: URL(string: image)!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        selectionStyle = .none
        
    }
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL) {
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            DispatchQueue.main.async() {
                self.coctailImage.image = UIImage(data: data)
            }
        }
    }
}
