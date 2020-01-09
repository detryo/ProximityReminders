//
//  MapItem.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import MapKit

//Create Address from MKMapItem detail
extension MKMapItem {
    
    var address: String {
        let placemark = self.placemark
        let number = placemark.subThoroughfare ?? ""
        let street = placemark.thoroughfare ?? ""
        let city = placemark.locality ?? ""
        let country = placemark.country ?? ""
        return "\(number) \(street), \(city), \(country)"
    }
    
}
