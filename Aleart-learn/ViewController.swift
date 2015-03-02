//
//  ViewController.swift
//  Aleart-learn
//
//  Created by 加藤 周 on 2015/03/01.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        var syu=0;
    override func viewDidLoad() {
        super.viewDidLoad()

         // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func alert(sender: AnyObject) {
        
        var alertController = UIAlertController(title: "hello!", message: "よくわかったね.", preferredStyle: .Alert)
        
        var defaultAction = UIAlertAction(title: "すごいでしょ!", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func button(sender: AnyObject) {
        syu++
        NSLog("syuは%d", syu)
        if (syu==50){
            var alertController = UIAlertController(title:"HELLO", message: "50回クリックしたね。\nだけど、１回クリックするだけでアラートは出せるよ。", preferredStyle: .Alert)
            var defaultaction=UIAlertAction(title: "OK!", style: .Default, handler: nil)
            alertController.addAction(defaultaction)
            presentViewController(alertController,animated:true,completion: nil)
            syu=0
        }
    }
    
    
    
    
}