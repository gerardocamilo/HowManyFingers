//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Gerardo Camilo on 11/10/14.
//  Copyright (c) 2014 ___GRCS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtInput: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        var output:String = "Please provide a valid number in the box."
        
        if(txtInput.text != nil){
            
        var inputNumber = txtInput.text.toInt()
        
            if(inputNumber != nil){
                var randomNum = Int((arc4random() % 6))
                
                if(inputNumber == randomNum){
                    output = "You got it right!"
                }else{
                    output = "Wrong! The number was \(randomNum). Try again."
                }
        }
            
        self.lblResult.text = output
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

