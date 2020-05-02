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
    
    var cocktailss = [CocktailListResponse]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cocktailsTableView.dataSource = self
        cocktailsTableView.delegate = self
        cocktailsTableView.register(UINib(nibName: "CocktailTableViewCell", bundle: nil),forCellReuseIdentifier: "cocktailCell")
        title = "Search for cocktails"
 //       loadData()
        // Do any additional setup after loading the view.
    }

/*    func loadData()
    {
        let service = CocktailService()
        service.randomCocktail(onComplete: { [weak self] (cocktails) in
            self?.cocktailss.append(cocktails)
            print("cocktails count \(self!.cocktailss.count)" )
            self?.cocktailsTableView.reloadData()
            }) { (error) in
                print(error.localizedDescription);
        }
    }*/
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CocktailSearchViewController: UITableViewDataSource, UITableViewDelegate  {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cocktailss.count
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cocktailCell", for: indexPath) as! CocktailTableViewCell
        
        let model = cocktailss[indexPath.row]
        cell.commonInit(image: model.drinks[indexPath.row].cocktailImage, coctailName: model.drinks[indexPath.row].cocktailName, coctailCategory: model.drinks[indexPath.row].cocktailCategory, coctailAlcoholic: model.drinks[indexPath.row].cocktailAlcohol)
        return cell
    }
}
