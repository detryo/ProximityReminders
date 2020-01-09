//
//  PlaceCell.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import MapKit

class PlaceCell: UITableViewCell {
    
    func configure(using mapItem: MKMapItem) {
        self.textLabel?.text = mapItem.name
        self.detailTextLabel?.text = mapItem.address
    }

}
