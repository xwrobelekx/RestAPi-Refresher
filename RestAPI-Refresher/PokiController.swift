//
//  PokiController.swift
//  RestAPI-Refresher
//
//  Created by Kamil Wrobel on 2/21/22.
//

import Foundation


class PokiController{
    
    //store Pokemons
    var pokemons : [Pokemon] = []
    let baseURL = URL(string: "https://pokeapi.co/api/v2/")
    
    //fetch Pokemon
    
    func fetchPokemonBy(name: String){
        
    }
    
    
    
    
    
    
    func fetchPokemonBy(id: Int, completion: @escaping(Pokemon?) -> Void){
        
        guard let url = baseURL else {return}
        
        let requestURL = url.appendingPathComponent("pokemon").appendingPathComponent("\(id)")
        
        print(requestURL)
        
        URLSession.shared.dataTask(with: requestURL) { data, response, error in
            if let error = error {
                print("❌ There was a problem dowloading pokemon. Error: \(error.localizedDescription)")
                completion(nil)
            }
            do {
                guard let pokiData = data else {
                    print("❌ Nil poki data for id: \(id)")
                    completion(nil)
                    return
                }
                let pokemon = try JSONDecoder().decode(Pokemon.self, from: pokiData)
                completion(pokemon)
            }catch let error {
                print("❌ Error decoding poki json. Error: \(error.localizedDescription)")
                completion(nil)
                return
            }
        }.resume()
    }
    
    
    
    var previousPokemonCount = 0
    var pokemonCount = 20
    func fetchTwentyPokemons(){
        for i in previousPokemonCount...pokemonCount {
            fetchPokemonBy(id: i) { pokemon in
                if let pokemon = pokemon {
                    self.pokemons.append(pokemon)
                }
            }
            previousPokemonCount = pokemonCount + 1
            pokemonCount += 20
        }
    }
    
    
    //fetch Images
    func fetchImages(){
        
    }
    
    
    
    
    
    
}
