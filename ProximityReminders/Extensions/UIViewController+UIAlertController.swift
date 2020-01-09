//
//  UIViewController+UIAlertController.swift
//  ProximityReminders
//
//  Created by Cristian Sedano Arenas on 02/01/2020.
//  Copyright © 2020 Cristian Sedano Arenas. All rights reserved.
//

import UIKit

//Create an alert in the view controller.
extension UIViewController {
    func presentAlert(withTitle title: String?, message: String?, handler: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: handler)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
