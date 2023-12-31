//
//  CarritoViewController.swift
//  ShoeExx
//
//  Created by Alumno on 5/12/23.
//

import UIKit

class CarritoViewController: UIViewController {
    
    @IBAction func actionSend(_ sender: Any) {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.sound, .alert]){
            granted, error in
            
            let contenido = UNMutableNotificationContent()
            contenido.title = "Permitir Recibir Notificaciones"
            contenido.body = "Recibe las notificaciones de compras realizadas"
            contenido.sound = .default
            contenido.categoryIdentifier = "isil.ShoeExx"
            
            let request = UNNotificationRequest.init(identifier: "prueba", content: contenido, trigger: nil)
            
            center.add(request) { error in
                print("Notifiacion enviada")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
}
