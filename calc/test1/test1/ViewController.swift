//
//  ViewController.swift
//  test1
//
//  Created by Vladimir Krinkin on 05/05/2019.
//  Copyright © 2019 Vladimir Krinkin. All rights reserved.
// vfuckfuckfuck

import UIKit

class ViewController: UIViewController {
    var number:Double = 0;
    var lastNum:Double = 0;
    var ifSign:Bool = false;
    var operation:Int = 0;
    var blockAgainOper:Bool = true;
    
    
    @IBAction func operat(_ sender: UIButton) {
        if(sender.tag == 15) {
            if(operation == 11) { output.text = String(lastNum + number); }
            if(operation == 12) { output.text = String(lastNum - number); }
            if(operation == 13) { output.text = String(lastNum * number); }
            if(operation == 14) { output.text = String(lastNum / number); }
            lastNum = Double(output.text!)!;
            blockAgainOper = true;
        }
        if(output.text != "" && sender.tag != 15 && blockAgainOper == true) {
            lastNum = Double(output.text!)!
            ifSign = true;
            if(sender.tag == 11) { output.text = "+"; }
            if(sender.tag == 12) { output.text = "-" }
            if(sender.tag == 13) { output.text = "*" }
            if(sender.tag == 14) { output.text = "/" }
            if(sender.tag == 10) {
                output.text = "0";
                lastNum = 0.0;
                number = 0.0;
            }
            operation = Int(sender.tag);
            blockAgainOper = false;
        }
    }
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func click(_ sender: UIButton) {
        if(ifSign == true) {
            output.text = String(sender.tag)
            ifSign = false
        }
        else {
            output.text = output.text! + String(sender.tag)
        }
        number = Double(output.text!)!
        blockAgainOper = true;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

