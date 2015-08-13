//
//  MovingSperatorCell.swift
//  MovingSperator
//
//  Created by 钩钩么么哒 on 15/8/7.
//  Copyright (c) 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit

class MovingSeperatorCell: UITableViewCell{
    var horizenLine: UIView?
    var seperatorHeight: CGFloat{
        get{
            return 1.0
        }
        set(newVal){
            horizenLine?.frame.size.height = newVal
        }
    }
    var seperatorWidth: CGFloat = 300.0
    var seperatorColor: UIColor{
        get{
            return UIColor.blackColor()
        }
        set(newVal){
            horizenLine?.backgroundColor = newVal
        }
    }
    var movingTime: Double = 0.5
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        horizenLine = UIView(frame: CGRectMake(0, self.frame.size.height, 0, seperatorHeight))
        self.addSubview(horizenLine!)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}