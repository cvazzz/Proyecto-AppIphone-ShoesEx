//
//  ZapatillaDA.swift
//  ShoeExx
//
//  Created by Alumno on 7/11/23.
//

import UIKit
import CoreData

class ZapatillaDA: NSObject {
    
    class func saveZapatilla(objZapatilla: ZapatillasBE) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let manageContext = appDelegate.persistentContainer.viewContext
        
        guard let entity = NSEntityDescription.insertNewObject(forEntityName: "Zapatilla", into: manageContext) as? Zapatilla else { return }
        

        entity.zapa_name = objZapatilla.Zapatillaname
        entity.talla = Int32(objZapatilla.talla)
        
        appDelegate.saveContext()
        
    }
    
    
    class func getZapatilla() -> [Zapatilla]? {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let manageContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest : NSFetchRequest<Zapatilla> = Zapatilla.fetchRequest()
        
        do {
            return try manageContext.fetch(fetchRequest)
        } catch {
            print("No accedio a la DB")
            return nil
        }
    }
    
}
