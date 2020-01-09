//
//  ReminderTextView.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

//Subclassing UITextView to provide placeholder behaviour in the reminder detail text view
class ReminderTextView: UITextView {

    private let placeHolderTextColour = UIColor(displayP3Red: 100/255, green: 160/255, blue: 195/255, alpha: 1.0)
    private let editingColour = UIColor.white
    private let placeholderText = "Enter notes"
    
    //Set the placeholder text colour and actual text in the text view
    func setPlaceholder() {
        self.textColor = placeHolderTextColour
        self.text = placeholderText
    }
    
    //Configure for editing
    func setForEditing(withIntialText text: String) {
        self.textColor = editingColour
        self.text = text
    }
    
    //Returns true if the existing text is all placeholder text
    var placeholderRemoved: Bool {
        return self.text! !=  placeholderText
    }
}
