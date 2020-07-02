//
//  NeumorphicUtil.swift
//  Z.Neumorphic
//
//  Created by 忠義 on 2020/7/2.
//  Copyright © 2020 忠義. All rights reserved.
//

import UIKit


public extension UIView{
    
    static var cornerRadius: CGFloat = 15
    static var shadowRadius: CGFloat = 2
    
    func soft(){
        
        self.layer.masksToBounds = false
        let darkShadow = CALayer()
        darkShadow.frame = bounds
        darkShadow.backgroundColor = backgroundColor?.cgColor
        darkShadow.shadowColor = UIColor(red: 0.87, green: 0.89, blue: 0.93, alpha: 1.0).cgColor
        darkShadow.cornerRadius = UIView.cornerRadius
        darkShadow.shadowOffset = CGSize(width: UIView.shadowRadius, height: UIView.shadowRadius)
        darkShadow.shadowOpacity = 1
        darkShadow.shadowRadius = UIView.shadowRadius
        self.layer.insertSublayer(darkShadow, at: 0)

        let lightShadow = CALayer()
        lightShadow.frame = bounds
        lightShadow.backgroundColor = backgroundColor?.cgColor
        lightShadow.shadowColor = UIColor.white.cgColor
        lightShadow.cornerRadius = UIView.cornerRadius
        lightShadow.shadowOffset = CGSize(width: -UIView.shadowRadius, height: -UIView.shadowRadius)
        lightShadow.shadowOpacity = 1
        lightShadow.shadowRadius = UIView.shadowRadius
        self.layer.insertSublayer(lightShadow, at: 0)
        
        
    }
    
    
}
