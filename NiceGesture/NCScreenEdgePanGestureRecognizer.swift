//
//  NCScreenEdgePanGestureRecognizer.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

public typealias ncEdgePanchHandler=(gestureRecognizer:UIScreenEdgePanGestureRecognizer)->()


class NCScreenEdgePanGestureRecognizer: UIScreenEdgePanGestureRecognizer {
    var promise = NCGesturePromise<UIScreenEdgePanGestureRecognizer>()
    
    init(@noescape config:ncEdgePanchHandler={ _ in }){
        super.init(target: promise, action: #selector(NCGesturePromise.gesureRecognizerHandler(_:)))
        config(gestureRecognizer: self)
    }
}
