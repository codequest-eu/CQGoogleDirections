//
//  GMSDirections.swift
//  lifthero
//
//  Created by Lukasz on 07/11/15.
//  Copyright © 2015 Lukasz Solniczek. All rights reserved.
//

import MapKit

typealias DirectionResponseHandler = (response: CQDirectionsResponse) -> ()

class CQGoogleDirections {
    
    let _baseUrl = "https://maps.googleapis.com/maps/api/directions/json?"
    
    var from: CLLocationCoordinate2D
    var to: CLLocationCoordinate2D
    var wayPoints: [CLLocationCoordinate2D]?
    
    init(from: CLLocationCoordinate2D, to: CLLocationCoordinate2D, wayPoints: [CLLocationCoordinate2D]?) {
        self.from = from
        self.to = to
        self.wayPoints = wayPoints
    }
    
    func calculateDirections(responseHandler: DirectionResponseHandler) {
        let url = constructGoogleDirectionsURL()
        let urlSession = NSURLSession.sharedSession()
        let task = urlSession.dataTaskWithURL(url) { data, response, error in
            let json = try! NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as! NSDictionary
            let directionResponse = CQDirectionsResponse(value: json)
            responseHandler(response: directionResponse)
        }
        task.resume()
        
    }
    
    private func constructGoogleDirectionsURL() -> NSURL {
        let origin = "origin=\(from.latitude),\(from.longitude)"
        let destination = "&destination=\(to.latitude),\(to.longitude)"
        var waypoints = ""
        if let wayPoints = wayPoints as [CLLocationCoordinate2D]? {
            waypoints = "&waypoints="
            for wayPoint in wayPoints {
                waypoints += "\(wayPoint.latitude),\(wayPoint.longitude)|"
            }
            waypoints = String(waypoints.characters.dropLast())
        }
        let combinePath = _baseUrl + origin + destination + waypoints
        let encodedCombinePath = combinePath.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLFragmentAllowedCharacterSet())!
        return NSURL(string: encodedCombinePath)!
    }
    
    
}
