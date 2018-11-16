//
//  ViewController.swift
//  fir
//
//  Created by 20161104616 on 2018/9/26.
//  Copyright © 2018年 20161104616. All rights reserved.
//

import UIKit
var base1: Double = 0,base2: Double = 0, base3 = ""
var counter = 0
var symboll: String  = ""
let str1: String = "0"
//var base2 = [Int](repeatElement(0, count: 20))
class ViewController: UIViewController {

    @IBOutlet weak var nu1: UILabel!
    @IBOutlet weak var nu2: UILabel!
    
    @IBOutlet weak var cs: UITextField!
    
    @IBOutlet weak var cs1: UITextField!
    
    
    
    
    @IBAction func number(_ sender: AnyObject) {
        let num = sender.currentTitle
        nu1.text = nu1.text! + num!!
        base1 = Double(nu1.text!)!;
        cs.text = String(base1)
    }
      
    @IBAction func add(_ sender: Any) {
        //调用等于
        symboll = "+";
         counter = 1;
       // base1 = base1 + base2
        nu2.text = String(base1)
        nu1.text = ""
        base2 = base1
       
    }
    
    @IBAction func reduce(_ sender: Any) {
        symboll = "-";
        counter = 1;
       // base1 = base1 - base2
        nu2.text = String(base1)
        nu1.text = ""
        base2 = base1
        
    }
    @IBAction func ride(_ sender: Any) {
        symboll = "*";
         counter = 1;
       
        nu2.text = String(base1)
        nu1.text = ""
        base2 = base1
       
    }
    @IBAction func except(_ sender: Any) {
        symboll = "/";
        counter = 1;
      //  base1 = base1 / 1
        nu2.text = String(base1)
        nu1.text = ""
        base2 = base1
    }
    
    
    
    /*       for i in base1 {
            if i == "+" || i == "-" || i == "*" || i == "/"{
                print(i)
            }
        }
    }
    */
//    @IBAction func calculate(_ sender: AnyObject) {
//        let cal = sender.currentTitle
//        nu1.text = nu1.text! + cal!!
//        base1 = nu1.text!;
//        cs1.text = base1
//    }
    
   
    @IBAction func equal(_ sender: Any) {
        switch symboll {
        case "+" :
            base1 = base1 + base2
            nu1.text = String(base1)
        case "-" :
            base1 = base1 - base2
            nu1.text = String(base1)
        nu2.text = String(base1)
        case "*" :
        base1 = base1 * base2
            nu1.text = String(base1)
        case "/" :
        base1 = base1 / base2
            nu1.text = String(base1)
        default:
            <#code#>
        }

    }
}
