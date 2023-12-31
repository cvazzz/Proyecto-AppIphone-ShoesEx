//
//  ViewController.swift
//  ShoeExx
//
//  Created by Alumno on 10/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imgLogo: UIImageView!
    
    var arrayZapatilla : [ZapatillaBE] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let zapatilla1 = ZapatillaBE( image: "CAMPUS_00s_Beige_IG5995_01_standard")
        let zapatilla2 = ZapatillaBE( image: "NY_90_Blanco_GX4392_01_standard")
        let zapatilla3 = ZapatillaBE( image: "USA_84_Blanco_GY2009_01_standard")
        let zapatilla4 = ZapatillaBE( image: "Zapatillas_Adi2000_Blanco_ID2099_01_standard")
        let zapatilla5 = ZapatillaBE( image: "Zapatillas_EQ21_Run_Blanco_GY2208_01_standard")
        let zapatilla6 = ZapatillaBE( image: "Zapatillas_Handball_Spezial_Verde_IF8913_01_standard")
       
        
        arrayZapatilla.append(zapatilla1)
        arrayZapatilla.append(zapatilla2)
        arrayZapatilla.append(zapatilla3)
        arrayZapatilla.append(zapatilla4)
        arrayZapatilla.append(zapatilla5)
        arrayZapatilla.append(zapatilla6)
        
        UIView.animate(withDuration: 0.3) {
            var transformacion = CGAffineTransform()
            transformacion = CGAffineTransform(rotationAngle: .pi/18)
            self.imgLogo.transform = transformacion
        } completion: { finish in
            UIView.animate(withDuration: 0.3) {
                self.imgLogo.transform = .identity
            }
        }

    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection
        section: Int) -> Int {
        return arrayZapatilla.count
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
        "ZapatillaCollectionViewCell", for: indexPath) as! ZapatillaCollectionViewCell
        cell.loadData(zapatilla: arrayZapatilla[indexPath.row])
        return cell
    }
        
}

