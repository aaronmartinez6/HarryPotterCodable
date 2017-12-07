//
//  CharacterDetailViewController.swift
//  HarryPotterCodable
//
//  Created by Aaron Martinez on 12/5/17.
//  Copyright © 2017 Aaron Martinez. All rights reserved.
//

import UIKit

class CharacterDetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    @IBOutlet weak var patronusLabel: UILabel!
    
    var actualCharacter: ActualCharacter?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    func updateViews() {
        guard let actualCharacter = actualCharacter
        else { print("The character property in the \(#function) was nil"); return }
        
        DispatchQueue.main.async {
            self.nameLabel.text = actualCharacter.character.name
            self.houseLabel.text = actualCharacter.character.house
            self.patronusLabel.text = actualCharacter.character.patronus
            self.imageView.image = actualCharacter.image
            
        }
    }
}
