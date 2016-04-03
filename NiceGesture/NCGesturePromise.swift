//
//  NCGesturePromise.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/3.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit


public class NCGesturePromise<T:UIGestureRecognizer>: NSObject {
    
    public typealias ncGestureHandler = (recognizer:T)->Void

    var beganHandler:ncGestureHandler = { _ in }
    var cancelledHandler:ncGestureHandler = { _ in }
    var changedHandler:ncGestureHandler = { _ in }
    var endedHandler:ncGestureHandler = { _ in }
    var failedHandler:ncGestureHandler = { _ in }

    
    override init(){
        super.init()
    }
    
    func gesureRecognizerHandler(recognizer:UIGestureRecognizer){
        switch recognizer.state {
        case .Began:
            beganHandler(recognizer: recognizer as! T)
        case .Cancelled:
            cancelledHandler(recognizer: recognizer as! T)
        case .Changed:
            changedHandler(recognizer: recognizer as! T)
        case .Ended:
            endedHandler(recognizer: recognizer as! T)
        case .Failed:
            failedHandler(recognizer: recognizer as! T)
        case .Possible:
            break
        }
    }

    public func whenBegan(handler:ncGestureHandler)->NCGesturePromise<T>{
        beganHandler=handler
        return self
    }
    
    public func whenCancelled(handler:ncGestureHandler)->NCGesturePromise<T>{
        cancelledHandler=handler
        return self
    }
    
    public func whenChanged(handler:ncGestureHandler)->NCGesturePromise<T>{
        changedHandler=handler
        return self
    }
    
    public func whenEnded(handler:ncGestureHandler)->NCGesturePromise<T>{
        endedHandler=handler
        return self
    }
    
    public func whenFailed(handler:ncGestureHandler)->NCGesturePromise<T>{
        failedHandler=handler
        return self
    }
}
