//
//  CQLocation.swift
//  lifthero
//
//  Created by Lukasz on 10/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

import MapKit

public struct CQLocation {
    
    public var adress: String
    public var location: CLLocationCoordinate2D
    
    public init(adress: String, location: [String: AnyObject]) {
        self.adress = adress
        self.location = CLLocationCoordinate2D(latitude: location["lat"] as! Double, longitude: location["lng"] as! Double)
    }
    
}