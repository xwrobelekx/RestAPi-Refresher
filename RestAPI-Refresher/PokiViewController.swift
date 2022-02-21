//
//  PokiViewController.swift
//  RestAPI-Refresher
//
//  Created by Kamil Wrobel on 2/21/22.
//

import UIKit

class PokiViewController: UIViewController, UITableViewDataSource{
  
    
    
    
    
    @IBOutlet weak var pokiTV: UITableView!
    
    let controller = PokiController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokiTV.dataSource = self

       // controller.fetchTwentyPokemons()
        controller.fetchPokemonBy(id: 25) { pokemon in
            if let pokemon = pokemon {
                DispatchQueue.main.async {
                    self.controller.pokemons.append(pokemon)
                    self.pokiTV.reloadData()
                }
            }
        }
        
    }
    
    
    //MARK: - TableViewDataSourceMethods:
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        controller.pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = pokiTV.dequeueReusableCell(withIdentifier: "pokiCell")
        let pokemon = controller.pokemons[indexPath.row]
        cell?.textLabel?.text = pokemon.name
        //cell?.subtitle.text = "# \(indexPath.row + 1)"
        return cell ?? UITableViewCell()
        
    }

    
    
    //MARK: - TableViewDelegateMethods
    

}
