//
//  NCTapPromise.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/3.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

public class NCTapPromise: NSObject {
    
    var tapHandler:ncTapGestrueHandler?
    
    override init() {
        super.init()
    }
    
    init(tapHandler:ncTapGestrueHandler){
        self.tapHandler=tapHandler
        super.init()
    }
    
    func tapGestureRecognizerHandler(recognizer:UITapGestureRecognizer){
        if let handler = tapHandler {
            handler(tapGestureRecognizer: recognizer)
        }
    }
    
    public func whenTapped(handler:ncTapGestrueHandler){
        tapHandler=handler
    }
    
}
