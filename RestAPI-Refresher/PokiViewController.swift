//
//  PokiViewController.swift
//  RestAPI-Refresher
//
//  Created by Kamil Wrobel on 2/21/22.
//

import UIKit

class PokiViewController: UIViewController {
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let contr = PokiController()
        contr.fetchPokemonBy(id: 25) { pokemon in
            //cool
        }
    }
    

    
    
    
    

}
