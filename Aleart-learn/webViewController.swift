//
//  webViewController.swift
//  Aleart-learn
//
//  Created by 加藤 周 on 2015/03/02.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url: NSURL = NSURL(string: "https://www.google.co.jp/?gws_rd=ssl")
        
        // リクエストを作成する.
        let request: NSURLRequest = NSURLRequest(URL: url)
        
        // リクエストを実行する.
        webview.loadRequest(request)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func back(sender: AnyObject) {
        var alertView = UIAlertController(title: "!!だまされた大賞!!", message: "あなたはだまされましたね。\nこのボタンはニセの戻るボタンです。", preferredStyle: .Alert)
        var deffect=UIAlertAction(title: "だまされた〜", style: .Default, handler: nil)
        alertView.addAction(deffect)
        presentViewController(alertView, animated: true, completion: nil)
        
    }
}
