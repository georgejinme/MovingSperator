//
//  ViewController.swift
//  MovingSperator
//
//  Created by 钩钩么么哒 on 15/8/7.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var seperatorTable: MovingSeperatorTable?

    override func viewDidLoad() {
        super.viewDidLoad()
        seperatorTable = MovingSeperatorTable(frame: self.view.bounds)
        seperatorTable?.table?.delegate = self
        seperatorTable?.table?.dataSource = self
        self.view.addSubview(seperatorTable!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        seperatorTable?.movingTime = 1
        seperatorTable?.animate(0)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: MovingSeperatorCell = self.seperatorTable?.table?.dequeueReusableCellWithIdentifier("movingCell") as! MovingSeperatorCell
        cell.movingTime = 1
        cell.seperatorColor = UIColor.redColor()
        cell.seperatorHeight = 4
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

