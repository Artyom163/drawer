//
//  Line.swift
//  drawer
//
//  Created by Admin on 04.05.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class Line {
    var start: CGPoint
    var end: CGPoint
    //var color: UIColor
    var width: CGFloat
    
    var red: CGFloat
    var blue: CGFloat
    var green: CGFloat
    
    init(start _start: CGPoint, end _end: CGPoint, width _width: CGFloat, red _red: CGFloat, blue _blue: CGFloat, green _green: CGFloat) {
        start = _start
        end = _end
        //color = _color
        width = _width
        
        red = _red
        blue = _blue
        green = _green
    }
    
}
