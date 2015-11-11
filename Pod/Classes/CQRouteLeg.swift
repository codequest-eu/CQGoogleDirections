//
//  CQRouteLeg.swift
//  lifthero
//
//  Created by Lukasz on 10/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

import Foundation

struct CQRouteLeg {
    
    var distance: String
    var duration: String
    var startLocation: CQLocation
    var endLocation: CQLocation
    
    init(value: [String: AnyObject]) {
        let distance = value["distance"] as! [String: AnyObject]
        self.distance = distance["text"] as! String
        let duration = value["duration"] as! [String: AnyObject]
        self.duration = duration["text"] as! String
        
        let endAdress = value["end_address"] as! String
        let endLocation = value["end_location"] as! [String: AnyObject]
        self.endLocation = CQLocation(adress: endAdress, location: endLocation)
        
        let startAdress = value["start_address"] as! String
        let startLocation = value["start_location"] as! [String: AnyObject]
        self.startLocation = CQLocation(adress: startAdress, location: startLocation)
    }
    
}