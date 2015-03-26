
//  GetFit
//
//  Created by Samuel Lewis on 18/02/2015.
//  Copyright (c) 2015 Samuel Lewis. All rights reserved.
//
class PlaceMarker: GMSMarker {
  // 1
  let place: GooglePlace
  
  // 2
  init(place: GooglePlace) {
    self.place = place
    super.init()
    
    position = place.coordinate
    icon = UIImage(named: place.placeType+"_pin")
    groundAnchor = CGPoint(x: 0.5, y: 1)
    appearAnimation = kGMSMarkerAnimationPop
    
    
  }
}