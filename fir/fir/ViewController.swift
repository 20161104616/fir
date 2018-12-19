//
//  ViewController.swift
//  fir
//
//  Created by 20161104616 on 2018/9/26.
//  Copyright © 2018年 20161104616. All rights reserved.
//

import UIKit
var base1:Double = 0 ,base2:Double = 0;
var base3 = "";
var counter = 0
var symboll: String  = ""
var symboll2: String  = ""
let str1: String = "0"
var decimal = 0;
var a = 1;
//var base2 = [Int](repeatElement(0, count: 20))
class ViewController: UIViewController {

    @IBOutlet weak var nu1: UILabel!
    @IBOutlet weak var nu2: UILabel!
    
    @IBOutlet weak var cs: UITextField!
    

    
    
    
    
    @IBAction func number(_ sender: AnyObject) {
        let num = sender.currentTitle
        nu1.text = nu1.text! + num!!
        //base1 = Double(nu1.text!)!;
   //     base1 = nu1.text!;
        
        cs.text = nu1.text;//String(base1)
    }
  
    @IBAction func point(_ sender: Any) {
        if(nu1.text == ""){
            nu1.text = "0"
            
        }
        if(decimal == 0)
        {
            nu1.text = nu1.text! + "."
            decimal = 1
        }
    }
    
    @IBAction func add(_ sender: Any) {
        //调用等于
        equal(symboll);
        symboll = "+";
         counter = 1;
       // base1 = base1 + base2
//        nu2.text = String(base1)
        nu2.text = nu1.text
        nu1.text = ""
  //      base2 = base1
        
    
    }
    
    @IBAction func reduce(_ sender: Any) {
        equal(symboll);
        symboll = "-";
        counter = 1;
       // base1 = base1 - base2
        nu2.text = nu1.text//String(base1)
        nu1.text = ""
   //     base2 = base1
        
        
  
        
    }
    @IBAction func ride(_ sender: Any) {
        equal(symboll);
        symboll = "*";
         counter = 1;
       
        nu2.text = nu1.text//String(base1)
        nu1.text = ""
   //     base2 = base1
        
        
       
    }

    @IBAction func except(_ sender: Any) {
        equal(symboll);
        symboll = "/";
        counter = 1;
      //  base1 = base1 / 1
        nu2.text = nu1.text//String(base1)
        nu1.text = ""
  //      base2 = base1
        
     
    }
    @IBAction func left(_ sender: Any) {
        base3 = nu2.text!
        symboll2 = symboll;
       // clearall(<#Any#>);
   //     base1 = 0;
   //     base2 = 0;
        nu1.text = ""
        nu2.text = ""
        symboll = ""
        
        
    }
    @IBAction func right(_ sender: Any) {
        equal(symboll);
        symboll = symboll2;
        nu2.text = base3;
        equal(symboll);
        nu2.text = "";
        
    }
    
    
    
    @IBAction func clearall(_ sender: Any) {
  //      base1 = 0;
  //      base2 = 0;
        nu1.text = ""
        nu2.text = ""
        symboll = ""
        decimal = 0
    }
    

   
    @IBAction func equal(_ sender: Any) {
        switch symboll {
        case "+" :
            base1 = Double(nu1.text!)!;
            base2 = Double(nu2.text!)!;
            base1 = base1 + base2
            nu1.text = String(base1)
        case "-" :
            base1 = Double(nu1.text!)!;
            base2 = Double(nu2.text!)!;
            base1 = base2 - base1
            nu1.text = String(base1)
            nu2.text = String(base1)
        case "*" :
            base1 = Double(nu1.text!)!;
            base2 = Double(nu2.text!)!;
        base1 = base1 * base2
            nu1.text = String(base1)
        case "/" :
            base1 = Double(nu1.text!)!;
            base2 = Double(nu2.text!)!;
            if(cs.text! == "0"){
                nu1.text = "不行！"
            }
            base1 = base2 / base1
            nu1.text = String(base1)
        default:
            print(a);
            a += 1;
        }
        symboll = ""
        decimal = 0
    }
}
