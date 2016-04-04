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
    
    // MARK:Pinch
    public func nc_addPinchGestureWithConfigClosure(@noescape config:ncPinchHandler)->NCGesturePromise<UIPinchGestureRecognizer>{
        let recognizer = NCPinchGestureRecognizer(config: config)
        addGestureRecognizer(recognizer)
        return recognizer.promise
    }
    
    public func nc_addPinchGesture()->NCGesturePromise<UIPinchGestureRecognizer>{
        return nc_addPinchGestureWithConfigClosure({ _ in })
    }
    
    // MARK:Rotation
    public func nc_addRotationGestureWithConfigClosure(@noescape config:ncRotationHandler)->NCGesturePromise<UIRotationGestureRecognizer>{
        let recognizer = NCRotationGestureRecognizer(config: config)
        addGestureRecognizer(recognizer)
        return recognizer.promise
    }
    
    public func nc_addRotationGesture()->NCGesturePromise<UIRotationGestureRecognizer>{
        return nc_addRotationGestureWithConfigClosure({ _ in })
    }
    
    // MARK:Swipe
    public func nc_addSwipeGestureWithConfigClosure(@noescape config:ncSwipeHandler)->NCGesturePromise<UISwipeGestureRecognizer>{
        let recognizer = NCSwipeGestureRecognizer(config: config)
        addGestureRecognizer(recognizer)
        return recognizer.promise
    }
    
    public func nc_addSwipeGesture()->NCGesturePromise<UISwipeGestureRecognizer>{
        return nc_addSwipeGestureWithConfigClosure({ _ in })
    }
    
    // MARK:ScreenEdgePan
    public func nc_addScreenEdgePanGestureWithConfigClosure(@noescape config:ncEdgePanchHandler)->NCGesturePromise<UIScreenEdgePanGestureRecognizer>{
        let recognizer = NCScreenEdgePanGestureRecognizer(config: config)
        addGestureRecognizer(recognizer)
        return recognizer.promise
    }
    
    public func nc_addScreenEdgePanGesture()->NCGesturePromise<UIScreenEdgePanGestureRecognizer>{
        return nc_addScreenEdgePanGestureWithConfigClosure({ _ in })
    }
    
    
    
    
    
    
    
    
}