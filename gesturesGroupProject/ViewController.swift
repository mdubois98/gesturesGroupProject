//
//  ViewController.swift
//  gesturesGroupProject
//
//  Created by Student on 1/11/17.
//  Copyright © 2017 bhs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "snapchatBackground"))
       
    }

//Actions
    @IBAction func swipeLeftGestureRecognizer(_ sender: AnyObject) {
    }
    
    @IBAction func longPressRecognizerGestureRecognizer(_ sender: AnyObject) {
    }
    @IBAction func pinchGestureRecognizer(_ sender: AnyObject)
    {
        //find how to scale image from image view
        let size = sender.scale
        myView.frame = CGRect(x: myView.frame.origin.x, y: myView.frame.origin.y, width: size * 100, height: size * 100)
    }
    @IBAction func rotateGestureRecognizer(_ sender: AnyObject)
    {
    }
}

    


