//
//  ZapatillaTableViewCell.swift
//  ShoeExx
//
//  Created by Alumno on 7/11/23.
//

import UIKit

class ZapatillaTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblZapatilla: UILabel!
    
    @IBOutlet weak var lblTalla: UILabel!
    
    func loadData(objZapatilla: Zapatilla) {
        self.lblZapatilla.text = (objZapatilla.zapa_name ?? "")
        self.lblTalla.text = "\(objZapatilla.talla ?? 0)"
    }
}
