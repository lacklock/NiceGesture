//
//  NCGesturePromise.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/3.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit


public class NCGesturePromise<T:UIGestureRecognizer>: NSObject {
    
    public typealias ncGestureHandler = (gestureRecognizer:T)->Void

    var beganHandler:ncGestureHandler = { _ in }
    var cancelledHandler:ncGestureHandler = { _ in }
    var changedHandler:ncGestureHandler = { _ in }
    var endedHandler:ncGestureHandler = { _ in }
    var failedHandler:ncGestureHandler = { _ in }

    
    override init(){
        super.init()
    }
    
    func gesureRecognizerHandler(gestureRecognizer:UIGestureRecognizer){
        switch gestureRecognizer.state {
        case .Began:
            beganHandler(gestureRecognizer: gestureRecognizer as! T)
        case .Cancelled:
            cancelledHandler(gestureRecognizer: gestureRecognizer as! T)
        case .Changed:
            changedHandler(gestureRecognizer: gestureRecognizer as! T)
        case .Ended:
            endedHandler(gestureRecognizer: gestureRecognizer as! T)
        case .Failed:
            failedHandler(gestureRecognizer: gestureRecognizer as! T)
        case .Possible:
            break
        }
    }
    
    /**
     one handler for many states
     
     - parameter states:  UIGestureRecognizerStates
     
     */
    public func whenStatesHappend(states:[UIGestureRecognizerState],handler:ncGestureHandler)->NCGesturePromise<T>{
        for state in states{
            switch state {
            case .Began:
                beganHandler=handler
            case .Cancelled:
                cancelledHandler=handler
            case .Changed:
                changedHandler=handler
            case .Ended:
                endedHandler=handler
            case .Failed:
                failedHandler=handler
            case .Possible:
                break
            }
        }
        return self
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
