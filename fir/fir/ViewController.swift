//
//  ViewController.swift
//  fir
//
//  Created by 20161104616 on 2018/9/26.
//  Copyright © 2018年 20161104616. All rights reserved.
//

import UIKit
var base1 = "";
var base2 = "";
let str1: String = "0"
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
        base1 = nu1.text!;
        var i = 0;
        for i in 0..<base1.count{
            if(i != 0-9){
                
            }
        }
            
        }
        
    
    
//    button.addTarget(self,action:#selector(tapped),forControlEvents:.TouchUpInside)
//    func tapped(){
//        print("tapped")
//    }
//
//
    
//    let str = "Hello, my name is Ben. Please visit my ben website at https://www.forta.com/."
//    label.attributedText = textRegex(pattern: ".a.",str: str, font: 22)
//
//    作者：IIronMan
//    链接：https://www.jianshu.com/p/56da83a4e0ab
//    來源：简书
//    简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
// a按下运算符时储存前一个数



let email = "lifusc148387@qq.com"
let rangeindex = email.range(of: "[0-9]{4}", options: .regularExpression, range: email.startIndex..<email.endIndex, locale:Locale.current)
//print(email.substring(with: rangeindex!)) //输出；1483

