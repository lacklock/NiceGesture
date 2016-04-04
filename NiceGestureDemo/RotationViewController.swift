//
//  RotationViewController.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

class RotationViewController: UIViewController {
    
    @IBOutlet weak var lbState: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        lbState.nc_addRotationGesture().whenChanged {[unowned self] (recognizer) -> Void in
            self.lbState.transform=CGAffineTransformMakeRotation(recognizer.rotation)
        }.whenEnded {[unowned self] (recognizer) -> Void in
            self.lbState.transform=CGAffineTransformIdentity
        }
    }


}
