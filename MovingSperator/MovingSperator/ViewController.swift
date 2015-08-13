//
//  ViewController.swift
//  MovingSperator
//
//  Created by 钩钩么么哒 on 15/8/7.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var seperatorTable: MovingSeperatorTable?

    override func viewDidLoad() {
        super.viewDidLoad()
        seperatorTable = MovingSeperatorTable(frame: self.view.bounds)
        self.view.addSubview(seperatorTable!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        seperatorTable?.animate(0)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

