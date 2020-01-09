//
//  ReminderCell.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

class ReminderCell: UITableViewCell {
    
    @IBOutlet weak var reminderTitleLabel: UILabel!
    @IBOutlet weak var reminderAddressLabel: UILabel!
    
    func configure(using reminder: Reminder) {
        self.reminderTitleLabel?.text = reminder.title
        self.reminderAddressLabel?.text = reminder.address
    }
}
