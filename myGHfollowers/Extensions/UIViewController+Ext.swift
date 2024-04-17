//
//  UIViewController+Ext.swift
//  myGHfollowers
//
//  Created by Ella on 2024/4/12.
//

import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let aleartVC = GFAlertVCViewController(title: title, message: message, buttonTitle: buttonTitle)
            aleartVC.modalPresentationStyle = .overFullScreen
            aleartVC.modalTransitionStyle = .crossDissolve
            self.present(aleartVC, animated: true)
        }
    }
    
}
