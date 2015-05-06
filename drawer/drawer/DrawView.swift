//
//  drawView.swift
//  drawer
//
//  Created by Admin on 04.05.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class DrawView: UIView {
    var lines: [Line] = []
    var lastPoint: CGPoint!
    //var drawColor = UIColor.blackColor()
    var lineWidth: CGFloat = 5
    
    var Red: CGFloat = 0.5
    var Blue: CGFloat = 0.5
    var Green: CGFloat = 0.5
    
    /*init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }*/
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        lastPoint = (touches.first as? UITouch)?.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let newPoint = (touches.first as? UITouch)?.locationInView(self) {
            lines.append(Line(start: lastPoint, end: newPoint, width: lineWidth, red: Red, blue: Blue, green: Green))
            lastPoint = newPoint
            self.setNeedsDisplay()
        }
    }
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        CGContextSetLineCap(context, kCGLineCapRound)
        for line in lines {
            CGContextBeginPath(context)
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
            CGContextSetRGBStrokeColor(context, line.red,line.green ,line.blue ,1)
            //CGContextSetStrokeColorWithColor(context, line.color.CGColor)
            CGContextSetLineWidth(context, line.width)
            CGContextStrokePath(context)
        }
    }
}
