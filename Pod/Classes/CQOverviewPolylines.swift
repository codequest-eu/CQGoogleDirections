//
//  CQOverviewPolylines.swift
//  lifthero
//
//  Created by Lukasz on 09/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

struct CQOverviewPolylines {
    
    var points: String
    
    init(value: [String: AnyObject]) {
        self.points = value["points"] as! String
    }
    
}