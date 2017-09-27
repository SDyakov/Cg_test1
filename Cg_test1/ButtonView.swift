//
//  ButtonView.swift
//  Cg_test1
//
//  Created by Admin on 27.09.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

@IBDesignable class ButtonView: UIButton {

    @IBInspectable var fillColor: UIColor = UIColor.blue
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        let plusPath = UIBezierPath()
        plusPath.lineWidth = CGFloat(3.0)
        plusPath.move(to: CGPoint(x: 10, y: rect.height/2))
        plusPath.addLine(to: CGPoint(x: rect.width-10, y: rect.height/2))
        UIColor.white.setStroke()
        plusPath.stroke()
        
    }
 

}
