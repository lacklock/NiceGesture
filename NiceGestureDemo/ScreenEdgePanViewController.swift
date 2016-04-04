//
//  ScreenEdgePanViewController.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

class ScreenEdgePanViewController: UIViewController,UIGestureRecognizerDelegate {

    @IBOutlet weak var lbState: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.nc_addScreenEdgePanGestureWithConfigClosure { (gestureRecognizer) -> () in
            gestureRecognizer.edges = .Right
            gestureRecognizer.delegate=self
        }.whenChanged {[unowned self] (gestureRecognizer) -> Void in
            let touchPoint = gestureRecognizer.locationInView(self.view)
            let offsetX=touchPoint.x-self.view.center.x
            let offsetY=touchPoint.y-self.view.center.y
            self.lbState.transform=CGAffineTransformMakeTranslation(offsetX, offsetY)
        }.whenEnded {[unowned self] (gestureRecognizer) -> Void in
            self.lbState.transform=CGAffineTransformIdentity
        }
    }

    func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

}
