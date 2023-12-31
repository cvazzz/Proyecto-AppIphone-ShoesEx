//
//  CoreViewController.swift
//  ShoeExx
//
//  Created by Alumno on 7/11/23.
//

import UIKit


class CoreViewController: UIViewController {
    
    @IBOutlet weak var txtZapatillaName: UITextField!
    @IBOutlet weak var txtTalla: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionSave(_ sender: Any) {
        let obj = ZapatillasBE()
        obj.Zapatillaname = self.txtZapatillaName.text ?? ""
        obj.talla = Int(self.txtTalla.text ?? "0") ?? 0
        ZapatillaBL.saveZapatilla(objZapatilla: obj) { errorMessage in
            self.showAlert(message: errorMessage)
        }
    }
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Demo", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true)
    }
}
