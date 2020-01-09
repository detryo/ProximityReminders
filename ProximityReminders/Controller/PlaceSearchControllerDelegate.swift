//
//  PlaceSaverDelegate.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import MapKit

//Protocol to allow the PlaceSearchController to communicate it's saved information to other controllers.
protocol PlaceSearchControllerDelegate: class {
    
    func placeSearchController(_ placeSearchController: PlaceSearchController, didFinishSelectingItems mapItem: MKMapItem, arriving: Bool)
}
