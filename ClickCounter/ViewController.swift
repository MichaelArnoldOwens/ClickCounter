//
//  ViewController.swift
//  ClickCounter
//
//  Created by Michael Owens on 5/1/15.
//  Copyright (c) 2015 Michael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!  //implicitly unwrapped optional
    var second_label:UILabel! //** didn't add this here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: Change button colors on click so that they won't be the same color as the background
        
        //creating a label
        var label = UILabel()
        label.frame = CGRectMake(50,50,60,60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //creating a second label
        var second_label = UILabel() //**only had this here
        second_label.frame = CGRectMake(250,50,60,60)
        second_label.text = "0"
        
        self.view.addSubview(second_label)
        self.second_label = second_label //**had this overwriting self.label (instead of self.second_label


        //creating an increment button
        var button_add = UIButton()
        button_add.frame = CGRectMake(150, 250, 60, 60)
        button_add.setTitle("Add", forState: .Normal)
        button_add.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button_add)

        //callback
        button_add.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //creating a decrement button
        var button_subtract = UIButton()
        button_subtract.frame = CGRectMake(50, 250, 100, 60)
        button_subtract.setTitle("Subtract", forState: .Normal)
        button_subtract.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button_subtract)
        
        //callback
        button_subtract.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)

        //creating a change background color button
        var background_button = UIButton()
        background_button.frame = CGRectMake(200, 250, 100, 60)
        background_button.setTitle("change BG", forState: .Normal)
        background_button.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(background_button)
        
        //callback
        background_button.addTarget(self, action:"changeBackground", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    //increment counter
    func incrementCount() {
        self.count++
        
        //outlets
        self.label.text = "\(self.count)"
        self.second_label.text = "\(self.count)"
    }
    
    //decrement counter
    func decrementCount(){
        self.count--
        
        //outlets
        self.label.text = "\(self.count)"
        self.second_label.text = "\(self.count)"
    }
    
    //generate random color
    func getRandomColor() -> UIColor {
        
        var randomRed:CGFloat = CGFloat(drand48())
        
        var randomGreen:CGFloat = CGFloat(drand48())
        
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    func changeBackground(){

        self.view.backgroundColor = getRandomColor()
    }
}

