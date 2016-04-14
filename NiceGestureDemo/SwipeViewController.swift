//
//  SwipeViewController.swift
//  NiceGesture
//
//  Created by 卓同学 on 16/4/4.
//  Copyright © 2016年 zhuo. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {

    @IBOutlet weak var lbState: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        lbState.nc_addSwipeGestureWithConfigClosure { (gestureRecognizer) -> () in
            gestureRecognizer.direction = .Right
        }.whenEnded{[unowned self] (recognizer) -> Void in
            self.lbState.text="Right"
        }
        
        lbState.nc_addSwipeGestureWithConfigClosure { (gestureRecognizer) -> () in
            gestureRecognizer.direction = .Left
            }.whenEnded{[unowned self] (recognizer) -> Void in
                self.lbState.text="Left"
        }
        
        lbState.nc_whenSwipedInDirection(.Down) {[unowned self]  (gestureRecognizer) in
            self.lbState.text="Down"
        }
    }



}
