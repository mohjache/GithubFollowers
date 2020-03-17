//
//  UIViewController+Ext.swift
//  GithubFollowers
//
//  Created by Anaru Herbert on 17/3/20.
//  Copyright © 2020 Anaru Herbert. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertViewController = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertViewController.modalPresentationStyle = .overFullScreen
            alertViewController.modalTransitionStyle = .crossDissolve
            
            self.present(alertViewController, animated: true)
        }
    }
}
