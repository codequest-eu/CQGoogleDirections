//
//  CQLocation.swift
//  lifthero
//
//  Created by Lukasz on 10/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

import MapKit

struct CQLocation {
    
    var adress: String
    var location: CLLocationCoordinate2D
    
    init(adress: String, location: [String: AnyObject]) {
        self.adress = adress
        self.location = CLLocationCoordinate2D(latitude: location["lat"] as! Double, longitude: location["lng"] as! Double)
    }
    
}