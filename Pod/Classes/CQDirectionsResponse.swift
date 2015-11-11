//
//  CQDirectionsResponse.swift
//  lifthero
//
//  Created by Lukasz on 07/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//
import MapKit

public struct CQDirectionsResponse {
    
    var routes: CQRoutes
    
    public init(value: NSDictionary) {
        let routes = value["routes"] as! NSArray
        self.routes = CQRoutes(value: routes[0] as! [String: AnyObject])
    }
}
