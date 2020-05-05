//
//  UIImageView+downloadImage.swift
//  Cocktails Book
//
//  Created by Сергей Павленок on 5/5/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func getData(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
    }
    
    func downloadImage(from url: URL) {
        getData(from: url) { data, response, error in
            guard let data = data, error == nil else { return }
            print(response?.suggestedFilename ?? url.lastPathComponent)
            DispatchQueue.main.async() {
                self.image = UIImage(data: data)
            }
        }
    }
}
