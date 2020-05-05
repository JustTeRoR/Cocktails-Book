//
//  UIViewController+loadBackground.swift
//  Cocktails Book
//
//  Created by Сергей Павленок on 5/5/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func loadBackground() {
        let backgroundImageView = UIImageView(image: UIImage(named: "background"))
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
    }
}
