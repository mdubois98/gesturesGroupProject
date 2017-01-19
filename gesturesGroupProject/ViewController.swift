//
//  ViewController.swift
//  gesturesGroupProject
//
//  Created by Student on 1/11/17.
//  Copyright © 2017 bhs. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myView: UIView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "snapchat")!)
       
    }

//Actions

    
    //@IBAction func pinchGestureRecognizer(_ sender: UIPinchGestureRecognizer)
    //{
        //let size = sender.scale
        //myView.frame = CGRect(x: myView.frame.origin.x, y: myView.frame.origin.y,width: size * 100, height:size * 100)
    //}
  
    
    @IBAction func onViewTapped(_ sender: UITapGestureRecognizer)
    {
        if myView.tag == 0
        {
            myView.backgroundColor = UIColor.cyan
            myView.tag = 1
        }
        else
        {
            myView.backgroundColor = UIColor.green
            myView.tag = 0
            
            print("tap")
        }
    }
    
  
    @IBAction func onViewPinched(_ sender: UIPinchGestureRecognizer)
    {
        let size = sender.scale
        myView.frame = CGRect(x: myView.frame.origin.x, y: myView.frame.origin.y,width: size * 100, height:size * 100)
    }
  
    
    @IBAction func onViewSwipedRight(_ sender: UISwipeGestureRecognizer)
    {
        myView.alpha -= 0.1
    }
    
   
    @IBAction func onViewSwipedLeft(_ sender: UISwipeGestureRecognizer)
    {
        myView.alpha += 0.1
    }
    @IBAction func rotateAction(_ sender: UIRotationGestureRecognizer)
    {
       
    }
}

    


