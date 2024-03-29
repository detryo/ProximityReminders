//
//  NotificationCentre.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import Foundation
import UserNotifications

extension UNUserNotificationCenter {
    
    func notifyUsingReminder(_ reminder: Reminder) {
        
        // Create notification content
        let content = UNMutableNotificationContent()
        content.title = reminder.title
        content.body = reminder.detail ?? ""
        content.sound = UNNotificationSound.default
        
        // notification unique identifier - same as the reminder
        let identifier = reminder.uuid.uuidString
        
        // the notification request object
        let request = UNNotificationRequest(identifier: identifier,
                                            content: content,
                                            trigger: nil)
        
        // trying to add the notification request to notification center
        self.add(request, withCompletionHandler: { (error) in
            if error != nil {
                print("Error adding notification with identifier: \(identifier)")
            }
        })
    }
}
