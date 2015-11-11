//
//  CQBounds.swift
//  lifthero
//
//  Created by Lukasz on 09/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

import MapKit

struct CQBounds {
    
    var northeast: CLLocationCoordinate2D
    var southwest: CLLocationCoordinate2D
    
    init(northeastDic: [String: AnyObject], southwestDic: [String: AnyObject]) {
        self.northeast = CLLocationCoordinate2D(latitude: northeastDic["lat"] as! Double, longitude: northeastDic["lng"] as! Double)
        self.southwest = CLLocationCoordinate2D(latitude: southwestDic["lat"] as! Double, longitude: southwestDic["lng"] as! Double)
    }
    
}