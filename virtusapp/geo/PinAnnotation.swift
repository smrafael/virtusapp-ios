//
//  PinAnnotation.swift
//  virtusapp
//
//  Created by Rafael Mendes on 31/08/17.
//  Copyright © 2017 Rafael. All rights reserved.
//

import Foundation
import MapKit

class PinAnnotation : NSObject, MKAnnotation {
    
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
    
}
