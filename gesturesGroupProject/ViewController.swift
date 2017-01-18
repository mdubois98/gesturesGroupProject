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
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "snapchatBackground"))
       
    }

//Actions

    
    @IBAction func pinchGestureRecognizer(_ sender: UIPinchGestureRecognizer)
    {
        let size = sender.scale
        myView.frame = CGRect(x: myView.frame.origin.x, y: myView.frame.origin.y,width: size * 100, height:size * 100)
    }
  
    
    @IBAction func onViewTapped(_ sender: UITapGestureRecognizer)
    {
        if myView.tag == 0
        {
            myView.backgroundColor = UIColor.red
            myView.tag = 1
        }
        else
        {
            myView.backgroundColor = UIColor.blue
            myView.tag = 0
        }
    }
}

    


