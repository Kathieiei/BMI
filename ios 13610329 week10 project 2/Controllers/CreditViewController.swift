//
//  CreditViewController.swift
//  ios 13610329 week10 project 2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {
    
    var fullName = "fullName"
    
    @IBOutlet weak var fullNameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLable.text = fullName

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
