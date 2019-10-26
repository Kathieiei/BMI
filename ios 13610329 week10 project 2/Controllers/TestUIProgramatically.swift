//
//  TestUIProgramatically.swift
//  ios 13610329 week10 project 2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class TestUIProgramatically: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let lable = UILabel()
        lable.text = "bmiValue" //string
        lable.text = bmiValue //value
        lable.frame = CGRect(x: 200, y: 200, width: 100, height: 50)
        view.addSubview(lable)
        
    }
}
