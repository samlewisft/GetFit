//
//  GooglePlace.swift
//  Feed Me
//
//  Created by Samuel Lewis
//

import UIKit
import Foundation
import CoreLocation

class GooglePlace {
  
  let name: String
  let address: String
  let coordinate: CLLocationCoordinate2D
  let placeType: String
  let photoReference: String?
  var photo: UIImage?
  
  init(dictionary:NSDictionary, acceptedTypes: [String])
  {
    name = dictionary["name"] as String
    address = dictionary["vicinity"] as String
    
    let location = dictionary["geometry"]?["location"] as NSDictionary
    let lat = location["lat"] as CLLocationDegrees
    let lng = location["lng"] as CLLocationDegrees
    coordinate = CLLocationCoordinate2DMake(lat, lng)
    
    if let photos = dictionary["photos"] as? NSArray {
      let photo = photos.firstObject as NSDictionary
      photoReference = photo["photo_reference"] as? NSString
    }
    
    var foundType = "restaurant"
    let possibleTypes = acceptedTypes.count > 0 ? acceptedTypes : ["gym", "bakery", "bar", "cafe", "grocery_or_supermarket", "restaurant", "park"]
    for type in dictionary["types"] as [String] {
      if contains(possibleTypes, type) {
        foundType = type
        break
      }
    }
    placeType = foundType
  }
}
