//
//  Util.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import Foundation
import UIKit

extension UIGestureRecognizerState{
    
    func toString()->String{
        switch self{
        case .Began:
            return "Began"
        case .Cancelled:
            return "Cancelled"
        case .Changed:
            return "Changed"
        case .Ended:
            return "Ended"
        case .Failed:
            return "Failed"
        case .Possible:
            return "invaid value"
        }
    }
}

extension UIColor {
    
    /// highlight color for test
    class var ncBlue:UIColor{
        return UIColor(red:0.505, green:0.831, blue:0.98, alpha:1)
    }

}