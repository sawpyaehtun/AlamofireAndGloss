//
//  BottonView.swift
//  AlamofireAndGloss
//
//  Created by SawPyaeHtun on 12/24/18.
//  Copyright © 2018 SawPyaeHtun. All rights reserved.
//

import UIKit

@IBDesignable
class BottonView: UIButton {

    @IBInspectable var conorRadius : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = conorRadius
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
