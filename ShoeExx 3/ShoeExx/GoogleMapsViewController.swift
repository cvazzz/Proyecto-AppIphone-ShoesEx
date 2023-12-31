//
//  GoogleMapsViewController.swift
//  ShoeExx
//
//  Created by Alumno on 2/12/23.
//

import UIKit
import GoogleMaps

class GoogleMapsViewController: UIViewController {
    
     var mapView: GMSMapView!
    
     override func viewDidLoad() {
     super.viewDidLoad()

     let options = GMSMapViewOptions()
     options.camera = GMSCameraPosition.camera(withLatitude: -12.073066074563423, longitude: -76.94810304869114, zoom: 11.0)
     options.frame = self.view.bounds
     mapView = GMSMapView(options: options)
         
     self.view.addSubview(mapView)
     addMarker(lat: -12.073066074563423, lon: -76.94810304869114, title: "ISIL", snippet: "La Molina")
     addMarker(lat: -12.121898212465704, lon: -77.02517962957435, title: "ISIL", snippet: "Miraflores")
     addMarker(lat: -12.093500473611202, lon: -77.05287211700224, title: "ISIL", snippet: "San Isidro")
         
     }
    
     private func addMarker(lat: Double, lon: Double, title: String, snippet: String) {
         
     let marker = GMSMarker()
     marker.position = CLLocationCoordinate2D(latitude: lat, longitude: lon)
     marker.title = title
     marker.snippet = snippet
     marker.map = mapView
}
}
