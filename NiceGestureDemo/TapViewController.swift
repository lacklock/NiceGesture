//
//  TapViewController.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/3.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit
import NiceGesture

class TapViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    @IBOutlet weak var lbTapped: UILabel!
    
    let hightColor = UIColor(red:0.505, green:0.831, blue:0.98, alpha:1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        targetView.nc_addTapGestureWithConfigClosure { (tapGestureRecognizer) -> () in
            tapGestureRecognizer.numberOfTapsRequired=2
        }.whenTapped {[unowned self] (tapGestureRecognizer) -> () in
            let tappedPoint = tapGestureRecognizer.locationInView(self.view)
            print("tapped at:\(tappedPoint)")
             self.tapped()
        }
        
        lbTapped.nc_whenTapped {[unowned self] (tapGestureRecognizer) -> () in
            self.tapped()
        }
        
    }
    
    private func tapped(){
        if self.targetView.tag == 0 {
            self.targetView.backgroundColor = self.hightColor
            self.targetView.tag=1
        }else {
            self.targetView.backgroundColor = UIColor.lightGrayColor()
            self.targetView.tag=0
        }

    }

}
