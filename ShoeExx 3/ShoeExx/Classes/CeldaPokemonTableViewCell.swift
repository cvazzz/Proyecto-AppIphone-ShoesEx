//
//  CeldaPokemonTableViewCell.swift
//  ShoeExx
//
//  Created by Alumno on 2/12/23.
//
import UIKit

class CeldaPokemonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var defensaPokemon: UILabel!
    @IBOutlet weak var ataquePokemon: UILabel!
    @IBOutlet weak var nombrePokemon: UILabel!
    @IBOutlet weak var imagenPokemon: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        imagenPokemon.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
