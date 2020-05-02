//
//  CocktailService.swift
//  Cocktails Book
//
//  Created by Сергей Павленок on 4/25/20.
//  Copyright © 2020 justterror. All rights reserved.
//

import Foundation



class CocktailService {
    func randomCocktail(onComplete: @escaping (Cocktail)->Void, onError: @escaping (Error) -> Void) {
        let urlString = ApiConstants.baseUrl + ApiConstants.accessKey + "/random.php"
        let url = URL(string: urlString)!
    
        let task = URLSession.shared.dataTask(with: url) { (data, response, error)  in
            if  let error = error {
                onError(error)
                return
            }
            guard let data = data else {
                onError(ServerError.noDataProvided)
                return
            }
            guard let randomCocktail: CocktailListResponse = try? JSONDecoder().decode(CocktailListResponse.self, from: data) else {
                onError(ServerError.failedToDecode)
                return
            }
            
            DispatchQueue.main.async {
                onComplete(randomCocktail.drinks[0])
            }
            //TODO: remove dumping on release stage
            dump(randomCocktail)
        }
        task.resume()
    }
    
    func searchForCocktail(query: String,onComplete: @escaping ([Cocktail])->Void, onError: @escaping (Error)->Void) {
        let urlString = ApiConstants.baseUrl + ApiConstants.accessKey + "/search.php?s=" + query
        let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                onError(error)
                return
            }
            guard let data = data else {
                onError(ServerError.noDataProvided)
                return
            }
            guard let appropriateCocktailList: CocktailListResponse = try? JSONDecoder().decode(CocktailListResponse.self, from: data) else {
                onError(ServerError.failedToDecode)
                return
            }
            DispatchQueue.main.async {
                onComplete(appropriateCocktailList.drinks)
            }
            //TODO: remove dumping on release stage
            dump(appropriateCocktailList)
        }
        task.resume()
    }
}
