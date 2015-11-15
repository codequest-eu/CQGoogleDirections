//
//  CQDirectionsResponse.swift
//  lifthero
//
//  Created by Lukasz on 07/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//
import MapKit

public struct CQDirectionsResponse {
    
    public var routes: CQRoutes?
    public var result: CQResponseResult
    
    public init(result: CQResponseResult) {
        self.result = result
    }
    
    public init(result: CQResponseResult, value: NSDictionary) {
        let routes = value["routes"] as! NSArray
        self.routes = CQRoutes(value: routes[0] as! [String: AnyObject])
        self.result = result
    }
}
