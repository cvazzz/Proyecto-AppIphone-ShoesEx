//
//  ZapatillaCollectionViewCell.swift
//  ShoeExx
//
//  Created by Alumno on 11/10/23.
//

import UIKit

class ZapatillaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgZapatilla: UIImageView!
    
    func loadData(zapatilla: ZapatillaBE) {
        self.imgZapatilla.image = UIImage(named: zapatilla.image)
        
    }
}
