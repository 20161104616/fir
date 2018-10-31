//
//  ViewController.swift
//  fir
//
//  Created by 20161104616 on 2018/9/26.
//  Copyright © 2018年 20161104616. All rights reserved.
//

import UIKit
var base1 = "";
let str1: String = "0"
var base2 = [Int](repeatElement(0, count: 20))
class ViewController: UIViewController {

    @IBOutlet weak var nu1: UILabel!
    
    @IBOutlet weak var cs: UITextField!
    
    @IBOutlet weak var cs1: UITextField!
    
   
    
    @IBAction func number(_ sender: AnyObject) {
        let num = sender.currentTitle
        nu1.text = nu1.text! + num!!
        base1 = nu1.text!;
        cs.text = base1
        
    }
    
//    @IBAction func calculate(_ sender: AnyObject) {
//        let cal = sender.currentTitle
//        nu1.text = nu1.text! + cal!!
//        base1 = nu1.text!;
//        cs1.text = base1
//    }
    
   
    @IBAction func equal(_ sender: Any) {
        
    }



let email = "lifusc148387@qq.com"
let rangeindex = email.range(of: "[0-9]{4}", options: .regularExpression, range: email.startIndex..<email.endIndex, locale:Locale.current)
//print(email.substring(with: rangeindex!)) //输出；1483

