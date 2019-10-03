//
//  ConstraintPackage.swift
//  SPMTest
//
//  Created by Appinventiv on 03/10/19.
//  Copyright © 2019 Appinventiv. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    public func addConstraints(withFormat format: String, views: UIView...) {
        var viewsDict = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewsDict[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDict))
    }
    
}


public class ViewExt {
    
    public func printSomething() {
        print("updated to 1.1.0")
    }
}
