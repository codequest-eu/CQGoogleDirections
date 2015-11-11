//
//  CQOverviewPolylines.swift
//  lifthero
//
//  Created by Lukasz on 09/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

public struct CQOverviewPolylines {
    
    var points: String
    
    public init(value: [String: AnyObject]) {
        self.points = value["points"] as! String
    }
    
}