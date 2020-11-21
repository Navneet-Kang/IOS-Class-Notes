//
//  ViewController.swift
//  PickerView
//
//  Created by Muthukumar on 20/11/20.
//  Copyright © 2020 Hcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    @IBOutlet weak var datePciker: UIDatePicker!
    @IBOutlet weak var pickerLabel: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0) {
            return vowel.count
        }
        else {
            return alpha.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (component == 0) {
            return vowel[row]
        }
        else {
            return alpha[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerLabel.text = vowel[row]
    }
    
    var vowel = ["A","E","I","O","U"]
    
    var alpha = ["A","B","C","D","E"]
    
    @IBOutlet weak var listPickerview: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setDateActions(_ sender: Any) {
        print("the date is-->",datePciker.date)
    }
    
}


