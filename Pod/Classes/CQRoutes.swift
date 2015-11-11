//
//  CQRoutes.swift
//  lifthero
//
//  Created by Lukasz on 09/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

public struct CQRoutes {
    
    var overviewPolylines: CQOverviewPolylines
    var bounds: CQBounds
    var legs: [CQRouteLeg]
    
    public init(value: [String: AnyObject]) {
        var legsArr = [CQRouteLeg]()
        for leg in value["legs"] as! NSArray {
            legsArr.append(CQRouteLeg(value: leg as! [String: AnyObject]))
        }
        self.legs = legsArr
        self.overviewPolylines = CQOverviewPolylines(value: value["overview_polyline"] as! [String: AnyObject])
        let mapBound = value["bounds"] as! [String: AnyObject]
        self.bounds = CQBounds(northeastDic: mapBound["northeast"] as! [String: AnyObject], southwestDic: mapBound["southwest"] as! [String: AnyObject])
    }
}