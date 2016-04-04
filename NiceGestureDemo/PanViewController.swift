//
//  PanViewController.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

class PanViewController: UIViewController {

    @IBOutlet weak var lbState: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbState.nc_addPanGesture()
            .whenEnded {[unowned self] (recognizer) -> Void in
                self.lbState.text=recognizer.state.toString()
                self.lbState.transform=CGAffineTransformIdentity
                self.view.layoutIfNeeded()
            }.whenChanged {[unowned self] (recognizer) -> Void in
                self.lbState.text=recognizer.state.toString()
                let touchPoint = recognizer.locationInView(self.view)
                let offsetX=touchPoint.x-self.view.center.x
                let offsetY=touchPoint.y-self.view.center.y
                self.lbState.transform=CGAffineTransformMakeTranslation(offsetX, offsetY)
        }
        
//        lbState.nc_addPanGesture().whenStatesHappend([.Ended,.Changed]) { (gestureRecognizer) -> Void in
//            print("another way :\(gestureRecognizer.state.toString())")
//        }
    }
    
    
    
}
