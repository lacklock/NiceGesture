//
//  NCRotationGestureRecognizer.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

public typealias ncRotationHandler=(gestureRecognizer:UIRotationGestureRecognizer)->()

class NCRotationGestureRecognizer: UIRotationGestureRecognizer {
    var promise = NCGesturePromise<UIRotationGestureRecognizer>()
    
    init(@noescape config:ncRotationHandler={ _ in }){
        super.init(target: promise, action: #selector(NCGesturePromise.gesureRecognizerHandler(_:)))
        config(gestureRecognizer: self)
    }
}
