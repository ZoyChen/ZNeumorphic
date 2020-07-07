//
//  NeumorphicUtil.swift
//  Z.Neumorphic
//
//  Created by 忠義 on 2020/7/2.
//  Copyright © 2020 忠義. All rights reserved.
//

import UIKit


public extension UIView{
    
    static var shadowRadius: CGFloat = 2
    static var rNeColor:CGFloat = 0.87
    static var gNeColor:CGFloat = 0.89
    static var bNeColor:CGFloat = 0.93
    
    func setNeBGColor(r:CGFloat,g:CGFloat,b:CGFloat){
        UIView.rNeColor = r
        UIView.gNeColor = g
        UIView.bNeColor = b
    }
    /// 凸起
    func SoftRaised(){
        
        guard let sublayers = self.layer.sublayers else {
            return
        }
        for layer in sublayers{
            if layer.name == "darkShadow" || layer.name == "lightShadow"{
                layer.removeFromSuperlayer()
            }
        }
        self.layer.masksToBounds = false
        let darkShadow = CALayer()
        darkShadow.name = "darkShadow"
        darkShadow.frame = bounds
        darkShadow.backgroundColor = backgroundColor?.cgColor
        //darkShadow.shadowColor = UIColor(red: 0.87, green: 0.89, blue: 0.93, alpha: 1.0).cgColor
        darkShadow.shadowColor = UIColor(red: UIView.rNeColor, green: UIView.gNeColor, blue: UIView.bNeColor, alpha: 1.0).cgColor
        darkShadow.cornerRadius = self.layer.cornerRadius
        darkShadow.shadowOffset = CGSize(width: UIView.shadowRadius, height: UIView.shadowRadius)
        darkShadow.shadowOpacity = 1
        darkShadow.shadowRadius = UIView.shadowRadius
        self.layer.insertSublayer(darkShadow, at: 0)

        let lightShadow = CALayer()
        lightShadow.name = "lightShadow"
        lightShadow.frame = bounds
        lightShadow.backgroundColor = backgroundColor?.cgColor
        lightShadow.shadowColor = UIColor.white.cgColor
        lightShadow.cornerRadius = self.layer.cornerRadius
        lightShadow.shadowOffset = CGSize(width: -UIView.shadowRadius, height: -UIView.shadowRadius)
        lightShadow.shadowOpacity = 1
        lightShadow.shadowRadius = UIView.shadowRadius
        self.layer.insertSublayer(lightShadow, at: 0)
    }
    
    /// 凹陷
    func SoftConcave(){
        //先清空
        guard let sublayers = self.layer.sublayers else {
            return
        }
        for layer in sublayers{
            if layer.name == "darkShadow" || layer.name == "lightShadow"{
                layer.removeFromSuperlayer()
            }
        }
        self.layer.masksToBounds = false
        let darkShadow = CALayer()
        darkShadow.name = "darkShadow"
        darkShadow.frame = bounds
        darkShadow.backgroundColor = backgroundColor?.cgColor
        darkShadow.shadowColor = UIColor(red: 0.87, green: 0.89, blue: 0.93, alpha: 1.0).cgColor
        darkShadow.cornerRadius = self.layer.cornerRadius
        darkShadow.shadowOffset = CGSize(width: -UIView.shadowRadius, height: -UIView.shadowRadius)
        darkShadow.shadowOpacity = 1
        darkShadow.shadowRadius = UIView.shadowRadius
        self.layer.insertSublayer(darkShadow, at: 0)

        let lightShadow = CALayer()
        lightShadow.name = "lightShadow"
        lightShadow.frame = bounds
        lightShadow.backgroundColor = backgroundColor?.cgColor
        lightShadow.shadowColor = UIColor.white.cgColor
        lightShadow.cornerRadius = self.layer.cornerRadius
        lightShadow.shadowOffset = CGSize(width: UIView.shadowRadius, height: UIView.shadowRadius)
        lightShadow.shadowOpacity = 1
        lightShadow.shadowRadius = UIView.shadowRadius
        self.layer.insertSublayer(lightShadow, at: 0)
    }
    
    
}
