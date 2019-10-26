//
//  ViewController.swift
//  ios 13610329 week10 project 2
//
//  Created by ICT-MAC on 19/10/2562 BE.
//  Copyright © 2562 ictsilpakorn. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    //Global variable คือตัวแปรกลางที่สามรถใช้ร่วมกันได้
    //var bmiValuecal = "0"
    //var calBrain = CalculateBrain()
    
    //เรียกใช้ stuct `#1ประกาศตัวแปรชนิด stuct
    var calculateBrain = CalculateBrain()

    
    @IBOutlet weak var sliderHeight: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func heightSliderPressed(_ sender: UISlider) {
        print(String(format:"%.2f",sender.value))
        
         let height = String(format:"%.2f",sender.value)
        heightLable.text = "\(height) M."
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        print(sender.value)
        
        
        print(String(format:"%.0f",sender.value))
        
        let weight = String(format:"%.0f",sender.value)
        weightLabel.text = "\(weight) kg"
    }
    
    
    @IBAction func calculatePreesed(_ sender: Any) {
        
        let heightFromeUser = sliderHeight.value
        let weightFromeUser = sliderWeight.value
        //Local Variable
        //let bmi = weight / pow(height, 2)
        //print(bmi)
        
        //bmiValuecal = String(format: "%.1f", weight / pow(height, 2))
        
        //bmiLabel.text = "\(bmi)"
        
        //เรียกใช้ stuct#2 เรียกใช้ฟังก์ชั่นstuct
        calculateBrain.calculateBMI(height: heightFromeUser, weight: weightFromeUser)
        
        //self.performSegue(withIdentifier: "goToResult", sender: self)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    @IBAction func starPressed(_ sender: UIButton) {
        //self.performSegue(withIdentifier: "goToCredit", sender: self)
        performSegue(withIdentifier: "goToCredit", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            //เรียกใช้ stuct#3 เรียกใช้ฟังก์ชั่น getBMIValue()
            //รู้ว่าตัวเดียวดกันบด้วยชื่อ caluraterbrain
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
           // destinationVC.bmiValue = bmiValuecal
        }//endif
        if segue.identifier == "goToCredit"{
            let CreditVC = segue.destination as! CreditViewController
            CreditVC.fullName = "Thitiwan Hengjamrat"
        }
    }//end func prepare
    
}//end class

