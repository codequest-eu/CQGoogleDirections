//
//  CQBounds.swift
//  lifthero
//
//  Created by Lukasz on 09/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

import MapKit

public struct CQBounds {
    
    public var northeast: CLLocationCoordinate2D
    public var southwest: CLLocationCoordinate2D
    
    public init(northeastDic: [String: AnyObject], southwestDic: [String: AnyObject]) {
        self.northeast = CLLocationCoordinate2D(latitude: northeastDic["lat"] as! Double, longitude: northeastDic["lng"] as! Double)
        self.southwest = CLLocationCoordinate2D(latitude: southwestDic["lat"] as! Double, longitude: southwestDic["lng"] as! Double)
    }
    
}