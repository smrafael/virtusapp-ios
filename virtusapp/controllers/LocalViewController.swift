//
//  LocalViewController.swift
//  virtusapp
//
//  Created by Rafael Mendes on 30/08/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import UIKit
import MapKit

class LocalViewController : UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        setVirtusLocation()
    }
    
    func setVirtusLocation() {
        let location = CLLocationCoordinate2DMake(-7.2164088, -35.915129200000024)
        let region = MKCoordinateRegionMakeWithDistance(location, 1500, 1500)
        let pin = PinAnnotation(
            title: "Virtus",
            subtitle: "Núcleo de Pesquisa, Desenvolvimento e Inovação em Tecnologia da Informação, Comunicação e Automação",
            coordinate: location)
        
        mapView.setRegion(region, animated: true)
        mapView.addAnnotation(pin)
    }
}
