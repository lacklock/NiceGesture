//
//  NCTapGestureRecognizer.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/3.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

class NCTapGestureRecognizer: UITapGestureRecognizer {
    
    var tapPromise = NCTapPromise()

    init(@noescape config:ncTapGestrueHandler={ _ in }){
        super.init(target: tapPromise, action: Selector("tapGestureRecognizerHandler:"))
        config(tapGestureRecognizer: self)
    }
    
    init(handler:ncTapGestrueHandler){
        super.init(target: tapPromise, action: Selector("tapGestureRecognizerHandler:"))
        tapPromise.tapHandler=handler
    }
}
