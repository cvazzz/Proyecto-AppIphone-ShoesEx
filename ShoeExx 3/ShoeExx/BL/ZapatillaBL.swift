//
//  ZapatillaBL.swift
//  ShoeExx
//
//  Created by Alumno on 14/11/23.
//

import UIKit

class ZapatillaBL: NSObject {
    class func saveZapatilla(objZapatilla: ZapatillasBE, completion: (_ errorMessage: String) -> Void ) {
        
        if objZapatilla.Zapatillaname == "" {
            completion("Falta Nombre")
        } else if objZapatilla.talla == 0 {
            completion("Falta Talla")
            
        }else {
            ZapatillaDA.saveZapatilla(objZapatilla: objZapatilla)
        }
        
    }

    class func getUsers() -> [Zapatilla]? {
        ZapatillaDA.getZapatilla()
    }
}
