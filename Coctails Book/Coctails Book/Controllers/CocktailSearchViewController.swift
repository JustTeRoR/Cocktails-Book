//
//  CocktailSearchViewController.swift
//  Coctails Book
//
//  Created by Сергей Павленок on 4/18/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import UIKit

class CocktailSearchViewController: ViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var cocktailSearchBar: UISearchBar!
    @IBOutlet weak var cocktailsTableView: UITableView!

    var cocktailList = [Cocktail]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cocktailsTableView.dataSource = self
        cocktailsTableView.delegate = self
        cocktailsTableView.register(UINib(nibName: "CocktailTableViewCell", bundle: nil),forCellReuseIdentifier: "cocktailCell")
        cocktailSearchBar.delegate = self
        title = "Search for cocktails"
        
        self.loadBackground()
        cocktailsTableView.backgroundColor = UIColor.clear
    }

    // MARK: - function for loading certain cocktails
    func loadCocktailsByCurrentQuery(query: String)
    {
        let service = CocktailService()
        service.searchForCocktail(query: query, onComplete: { [weak self] (cocktails) in
            self?.cocktailList = cocktails
            print("cocktails count \(self!.cocktailList.count)" )
            self?.cocktailsTableView.reloadData()
            }) {(error) in
                print(error.localizedDescription)
        }
    }

}

// MARK: - Extension for tableView
extension CocktailSearchViewController: UITableViewDataSource, UITableViewDelegate  {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cocktailList.count
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCocktailDetails = CocktailDetailsViewController()
        selectedCocktailDetails.cocktailModel = cocktailList[indexPath.row]
        navigationController?.pushViewController(selectedCocktailDetails, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cocktailCell", for: indexPath) as! CocktailTableViewCell
        let model = cocktailList[indexPath.row]
        cell.commonInit(image: model.cocktailImage, coctailName: model.cocktailName, coctailCategory: model.cocktailCategory, coctailAlcoholic: model.cocktailAlcohol)
        return cell
    }
}

extension CocktailSearchViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
        loadCocktailsByCurrentQuery(query: searchBar.text ?? "")
    }
}
