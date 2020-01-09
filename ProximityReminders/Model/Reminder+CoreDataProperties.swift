//
//  Reminder+CoreDataProperties.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//
//

import Foundation
import CoreData


extension Reminder {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Reminder> {
        return NSFetchRequest<Reminder>(entityName: "Reminder")
    }

    @NSManaged public var title: String
    @NSManaged public var detail: String
    @NSManaged public var arriving: Bool
    @NSManaged public var isActive: Bool
    @NSManaged public var recurring: Bool
    @NSManaged public var address: String
    @NSManaged public var uuid: UUID
    @NSManaged public var creationDate: Date
    
    @NSManaged public var location: Location

}


