//
//  NiceUIViewExtension.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/3.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import Foundation

public typealias ncTapGestrueHandler=(tapGestureRecognizer:UITapGestureRecognizer)->()

extension UIView{
    
    public func nc_addTapGestureWithConfigClosure(@noescape config:ncTapGestrueHandler)->NCTapPromise{
        let tapRecognizer=NCTapGestureRecognizer(config: config)
        addGestureRecognizer(tapRecognizer)
        return tapRecognizer.tapPromise
    }
    
    public func nc_whenTapped(handler:ncTapGestrueHandler){
        let tapRecognizer=NCTapGestureRecognizer(handler: handler)
        addGestureRecognizer(tapRecognizer)
    }
    
}