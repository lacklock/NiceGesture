//
//  NCSwipeGestureRecognizer.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

public typealias ncSwipeHandler=(gestureRecognizer:UISwipeGestureRecognizer)->()

class NCSwipeGestureRecognizer: UISwipeGestureRecognizer {
    var promise = NCGesturePromise<UISwipeGestureRecognizer>()
    
    init(@noescape config:ncSwipeHandler={ _ in }){
        super.init(target: promise, action: #selector(NCGesturePromise.gesureRecognizerHandler(_:)))
        config(gestureRecognizer: self)
    }
}
