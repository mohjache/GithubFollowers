//
//  GFTextField.swift
//  GithubFollowers
//
//  Created by Anaru Herbert on 6/2/20.
//  Copyright © 2020 Anaru Herbert. All rights reserved.
//

import UIKit

class GFTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false;
    }
}
