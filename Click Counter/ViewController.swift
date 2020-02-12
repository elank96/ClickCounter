//
//  ViewController.swift
//  Click Counter
//
//  Created by Elan Kainen on 11/7/19.
//  Copyright © 2019 Elan Kainen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label: UILabel!
    var label2: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 200, y: 150, width: 60, height: 60)
        label2.text = label.text!
        view.addSubview(label2)
        self.label2 = label2
        
        //button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        let decrButton = UIButton()
        decrButton.frame = CGRect(x: 200, y: 250, width: 60, height: 60)
        decrButton.setTitle("Click", for: .normal)
        decrButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(decrButton)
        
        decrButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
    }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func toggleBackground() {
        if view.backgroundColor == UIColor.blue {
         view.backgroundColor = UIColor.red
        }
        else {
            view.backgroundColor = UIColor.blue
        }
    }

}

