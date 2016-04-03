//
//  NCPanGestureRecognizer.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

public typealias ncPanHandler=(gestureRecognizer:UIPanGestureRecognizer)->()

public class NCPanGestureRecognizer: UIPanGestureRecognizer {
    var promise = NCGesturePromise<UIPanGestureRecognizer>()
    
    init(@noescape config:ncPanHandler={ _ in }){
        super.init(target: promise, action: Selector("gesureRecognizerHandler:"))
        config(gestureRecognizer: self)
    }
    
}
