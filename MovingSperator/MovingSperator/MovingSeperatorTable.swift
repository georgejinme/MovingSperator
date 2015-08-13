//
//  MovingSperatorTable.swift
//  MovingSperator
//
//  Created by 钩钩么么哒 on 15/8/7.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit

class MovingSeperatorTable: UIView, UITableViewDelegate, UITableViewDataSource{
    var table: UITableView?
    
    var seperatorWidth: CGFloat = 1.0
    var seperatorColor: UIColor = UIColor.blackColor()
    var movingTime: Double = 0.2
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        table = UITableView(frame: frame, style: UITableViewStyle.Plain)
        table?.delegate = self
        table?.dataSource = self
        table?.separatorStyle = UITableViewCellSeparatorStyle.None
        table?.registerClass(MovingSeperatorCell.self, forCellReuseIdentifier: "movingCell")
        self.addSubview(table!)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: MovingSeperatorCell = table?.dequeueReusableCellWithIdentifier("movingCell") as! MovingSeperatorCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
}

extension MovingSeperatorTable{
    func animate(time: Int){
        if (time >= self.table?.visibleCells().count) {
            return
        }else{
            let cell = self.table?.visibleCells()[time] as! MovingSeperatorCell
            var verticalLine = UIView(frame: CGRectMake(0, cell.frame.origin.y, self.seperatorWidth, 0))
            verticalLine.backgroundColor = seperatorColor
            self.addSubview(verticalLine)
            UIView.animateWithDuration(self.movingTime, delay: 0, options: UIViewAnimationOptions.CurveLinear, animations: {
                verticalLine.frame.size.height = cell.frame.size.height
                }, completion: {[weak self] (finish) -> Void in
                    UIView.animateWithDuration(cell.movingTime, animations: {
                        cell.horizenLine!.frame.size.width = cell.seperatorWidth
                    }, completion: nil)
                self!.animate(time + 1)
            })
        }
    }
}

