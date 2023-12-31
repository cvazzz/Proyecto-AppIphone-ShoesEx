//
//  InfoCoreViewController.swift
//  ShoeExx
//
//  Created by Alumno on 5/12/23.
//

import UIKit

class InfoCoreViewController: UIViewController {
    
    @IBOutlet weak var tblvZapatilla: UITableView!
    
    var array : [Zapatilla]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        array = ZapatillaDA.getZapatilla()
        self.tblvZapatilla.reloadData()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionAddShoe(_ sender: Any) {
        let vc = self.navigationController?.viewControllers.first(where: { vc in
            return vc is SecodViewController
        })
        self.navigationController?.popToViewController(vc!, animated: true)
    }
}


extension InfoCoreViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array?.count ?? 0
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ZapatillaTableViewCell", for: indexPath) as! ZapatillaTableViewCell
        let a = array ?? []
        cell.loadData(objZapatilla: a[indexPath.row])
        return cell
    }
}
