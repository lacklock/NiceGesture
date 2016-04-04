//
//  PinchViewController.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {

    @IBOutlet weak var lbState: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        lbState.nc_addPinchGesture().whenBegan {[unowned self] (recognizer) -> Void in
              self.lbState.text=recognizer.state.toString()
        }.whenChanged {[unowned self]  (recognizer) -> Void in
            self.lbState.text=String(recognizer.scale)
        }.whenEnded {[unowned self]  (recognizer) -> Void in
            self.lbState.text=recognizer.state.toString()
        }
    }



}
