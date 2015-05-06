//
//  ViewController.swift
//  drawer
//
//  Created by Admin on 04.05.15.
//  Copyright (c) 2015 MIPT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var drawView: DrawView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearTapped() {
        var theDrawView: DrawView = drawView as DrawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    }
    
    @IBAction func WidthChange(sender: UISlider) {
        var theDrawView = drawView as DrawView
        theDrawView.lineWidth = CGFloat(sender.value) * 10
    }
    
    @IBAction func ColorChange(sender: UISlider) {
        var theDrawView = drawView as DrawView
        switch (sender.tag) {
        case 1:
            theDrawView.Red = CGFloat(sender.value)
            break
        case 2:
            theDrawView.Blue = CGFloat(sender.value)
            break
        case 3:
            theDrawView.Green = CGFloat(sender.value)
            break
        default:
            break
        }
    }
    
    /*@IBAction func colorTapped(button: UIButton!) {
     *   var theDrawView: DrawView = drawView as DrawView
     *   var color: UIColor!
     *   if (button.titleLabel!.text == "Red") {
     *       color = UIColor.redColor()
     *   } else if (button.titleLabel!.text == "Black") {
     *       color = UIColor.blackColor()
     *   }
     *   drawView.drawColor = color
    }*/
}

