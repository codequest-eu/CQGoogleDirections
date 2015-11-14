//
//  ViewController.swift
//  CQGoogleDirections
//
//  Created by Lukasz Solniczek on 11/11/2015.
//  Copyright (c) 2015 Lukasz Solniczek. All rights reserved.
//

import UIKit
import CQGoogleDirections
import CoreLocation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let directionAPI = CQGoogleDirections(from: CLLocationCoordinate2D(latitude: 52.237800, longitude: 21.049662), to: CLLocationCoordinate2D(latitude: 52.226974, longitude: 21.056588), wayPoints: nil)
        
        directionAPI.calculateDirections { (response) -> () in
            switch response.result {
            case .Success:
                print(response.routes)
            case .Failure(_):
                print("Error")
            }
        }
    }

}

