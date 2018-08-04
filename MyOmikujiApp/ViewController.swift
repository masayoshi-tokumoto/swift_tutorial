//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by 徳元将義 on 2018/08/04.
//  Copyright © 2018年 Private Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        let results = ["大吉", "吉", "中吉", "凶", "大凶"]
//        let random = arc4random_uniform(3)
        let random = arc4random_uniform(UInt32(results.count))
        
        self.myLabel.text = results[Int(random)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.layer.cornerRadius = 50
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

