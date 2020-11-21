//
//  ViewController.swift
//  GuardLet
//
//  Created by Muthukumar on 17/11/20.
//  Copyright © 2020 Hcl. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textF: UITextField!
    override func viewDidLoad() {
        
        //CGRect - Core Graphics rectangle make
//        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
//        label.backgroundColor = .red
//        label.text = "Hello world"
//        label.textAlignment = .center
//        self.view.addSubview(label)
//  
//  
//    //CGRect - Core Graphics rectangle make
//    let textField = UITextField(frame: CGRect(x: 50, y: 250, width: 100, height: 100))
//    textField.backgroundColor = .red
//    textField.text = "Hello world"
//    self.view.addSubview(textField)
        

        changeOptionalStringToUpperCase()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
    
    func changeOptionalStringToUpperCase() {
        var name:String?
        name = "Naveent"
        
//        if let navee = name {
//
//        }
//     print("",navee)
        
        guard let temp = name else {
            print("Name is nil. Cannot process")
            return
        }
        print("Uppercased:\(temp.uppercased())")
    }


}

