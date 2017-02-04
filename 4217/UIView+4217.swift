//
//  UIView+4217.swift
//  4217
//
//  Created by Ha Lam on 2/4/17.
//  Copyright © 2017 MarInc. All rights reserved.
//

import UIKit

extension UIView {
    func anchor(_ top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                topConstraint: CGFloat = 0,
                leftConstraint: CGFloat = 0,
                bottomConstraint: CGFloat = 0,
                rightConstraint: CGFloat = 0,
                widthConstraint: CGFloat = 0,
                heightConstraint: CGFloat = 0,
                centerY: NSLayoutYAxisAnchor? = nil,
                centerX: NSLayoutXAxisAnchor? = nil,
                centerYConstraint: CGFloat = 0,
                centerXConsatrint: CGFloat = 0) -> [NSLayoutConstraint]? {
        translatesAutoresizingMaskIntoConstraints = false
        var anchors = [NSLayoutConstraint]()
        if let top = top {
            anchors.append(topAnchor.constraint(equalTo: top, constant: topConstraint))
        }
        if let left = left {
            anchors.append(leftAnchor.constraint(equalTo: left, constant: leftConstraint))
        }
        if let bottom = bottom {
            anchors.append(bottomAnchor.constraint(equalTo: bottom, constant: bottomConstraint))
        }
        if let right = right {
            anchors.append(rightAnchor.constraint(equalTo: right, constant: rightConstraint))
        }
        if widthConstraint > 0 {
            anchors.append(widthAnchor.constraint(equalToConstant: widthConstraint))
        }
        if heightConstraint > 0 {
            anchors.append(heightAnchor.constraint(equalToConstant: heightConstraint))
        }
        if let centerX = centerX {
            anchors.append(centerXAnchor.constraint(equalTo: centerX, constant: centerXConsatrint))
        }
        if let centerY = centerY {
            anchors.append(centerYAnchor.constraint(equalTo: centerY, constant: centerYConstraint))
        }
        
        anchors.forEach({$0.isActive = true})
        
        return anchors
    }
}









