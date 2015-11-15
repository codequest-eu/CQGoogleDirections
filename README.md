# CQGoogleDirections

[![CI Status](http://img.shields.io/travis/Lukasz Solniczek/CQGoogleDirections.svg?style=flat)](https://travis-ci.org/Lukasz Solniczek/CQGoogleDirections)
[![Version](https://img.shields.io/cocoapods/v/CQGoogleDirections.svg?style=flat)](http://cocoapods.org/pods/CQGoogleDirections)
[![License](https://img.shields.io/cocoapods/l/CQGoogleDirections.svg?style=flat)](http://cocoapods.org/pods/CQGoogleDirections)
[![Platform](https://img.shields.io/cocoapods/p/CQGoogleDirections.svg?style=flat)](http://cocoapods.org/pods/CQGoogleDirections)

`CQGoogleDirections` is a small set of classes create to simplify use of Google Direction API. `CQGoogleDirections` turn respons JSON into set of convenient objects you can use in your application.

## Usage
To start using `CQGoogleDirections` you need only 2 lines of code:

######Create a CQGoogleDirections object:

```	
let directionAPI = CQGoogleDirections(from: CLLocationCoordinate2D(latitude: 52.237800, longitude: 21.049662), to: CLLocationCoordinate2D(latitude: 52.226974, longitude: 21.056588), wayPoints: nil)
```
	
######Run API request and handle return:

```
directionAPI.calculateDirections { response in
	switch response.result {
    case .Success:
    	print(response.routes)
    case .Failure(_):
        print("Error")
    }
}
```

######Access to `CQRoute` object:

`CQRoute` is main object which encapsulates information about `overviewPolylines`, `bounds` and `legs`. To access `CQRoute` you need to:

```
case .Success:
	if let routes = response.routes as CQRoutes? {
		//use routes object
	}
```

## Requirements
* Runs on iOS 8 at least, or above.
* Compatible with Swift 2.0 / Xcode 7 and later.

## Installation

CQGoogleDirections is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '8.0'

pod "CQGoogleDirections"

use_frameworks!
```
Then run the following command from the Terminal:

```
pod install
```
Now, from your code, you should be able to simply import the module like this:

```
import CQGoogleDirections
```

##TODO
1. Add service for all Google Direction API params
2. Handle Google Direction API errors 
2. Write tests
3. Create better library example

## Author

Lukasz Solniczek, l(dot)solniczek(at)gmail(dot)com

## License

CQGoogleDirections is available under the MIT license. See the LICENSE file for more info.
