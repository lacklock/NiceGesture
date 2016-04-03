//
//  NiceUIViewExtension.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/3.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import Foundation


extension UIView{
    
    // MARK:Tap
    public func nc_addTapGestureWithConfigClosure(@noescape config:ncTapGestrueHandler)->NCTapPromise{
        let tapRecognizer=NCTapGestureRecognizer(config: config)
        addGestureRecognizer(tapRecognizer)
        return tapRecognizer.tapPromise
    }
    
    public func nc_whenTapped(handler:ncTapGestrueHandler){
        let tapRecognizer=NCTapGestureRecognizer(handler: handler)
        addGestureRecognizer(tapRecognizer)
    }
    
    // MARK:LongPress
    public func nc_addLongPressGestureWithConfigClosure(@noescape config:ncLongPressHandler)->NCGesturePromise<UILongPressGestureRecognizer>{
        let recognizer = NCLongPressGestureRecognizer(config: config)
        addGestureRecognizer(recognizer)
        return recognizer.promise
    }
    
    public func nc_addLongPressGesture()->NCGesturePromise<UILongPressGestureRecognizer>{
        return nc_addLongPressGestureWithConfigClosure({ _ in })
    }
    
    
    // MARK:Pan
    public func nc_addPanGestureWithConfigClosure(@noescape config:ncPanHandler)->NCGesturePromise<UIPanGestureRecognizer>{
        let recognizer = NCPanGestureRecognizer(config: config)
        addGestureRecognizer(recognizer)
        return recognizer.promise
    }
    
    public func nc_addPanGesture()->NCGesturePromise<UIPanGestureRecognizer>{
        return nc_addPanGestureWithConfigClosure({ _ in })
    }
}