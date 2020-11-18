//
//  ViewController.swift
//  Optional
//
//  Created by Muthukumar on 15/11/20.
//  Copyright © 2020 Hcl. All rights reserved.
//
//Optional and Forced unwrapping
import UIKit

class ViewController: UIViewController {
    
    //optional varibales
    
    var userName: String?
    var passWord: String?
    
    override func viewDidLoad() {
        userName = "Naveent"
        print("-->",userName ?? "no value")
        
        userName = "hello world"
        //Unexpectedly found nil while unwrapping an Optional value: file
        print("-->",userName)
        
        //Optional binding
        if let myname = userName {
            print("Inside-->",myname)
        }
        
        // Optional chaining - Works like && operator
        if let myname = userName, let myPass =  passWord {
            print("Inside-->",myname, myPass)
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeColor(_ sender: Any) {
        
        if let myButtonIndex = (sender as AnyObject).tag {
            print("myButtonIndex",myButtonIndex)
            switch myButtonIndex {
            case 0:
                self.view.backgroundColor = .red
            case 1:
               self.view.backgroundColor = .green
            case 2:
               self.view.backgroundColor = .yellow
            case 3:
                self.view.backgroundColor = .orange
            case 4:
                self.view.backgroundColor = .blue
            default:
                print("Some other character")
            }
        }
        
    }
}

