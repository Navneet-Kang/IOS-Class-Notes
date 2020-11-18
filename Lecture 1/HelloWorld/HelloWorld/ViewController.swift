//
//  ViewController.swift
//  HelloWorld
//
//  Created by Muthukumar on 14/11/20.
//  Copyright © 2020 Hcl. All rights reserved.
//
//IBOutlet - Interface builder - storyboard name
//weak - memory management
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!
    var a = 10
    var b: Int = 10
    
    let x = 100
    let str: String = "100"
    //Editing changed
    @IBAction func textFieldChanged(_ sender: Any) {
        firstLabel.text = firstText.text
    }
    
    @IBAction func click(_ sender: Any) {
        firstLabel.text = "swift World"
    }
    
    var array: [String]  =  ["A","B","C","C","D"] //[]
    var dict:[String: String] = ["username":"Ram","Password":"123"] // [key:value]
    
    var dict1:[String: Any] = ["username":"Ram","Password":123] // [key:value]

    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        
        firstLabel.text = "Hello World"
        
        print(dict)
        print(dict["username"])
        print(dict1["Password"])
        
        print("- - - - - - -- - -- - - -- - - -- - - -- - - - --")
        print(array)
        print(array.count)
        print(array[0])
        
        array.append("D")
        array.remove(at: 0)
        print(array)
        
        for index in array {
            print("index-->",index)
        }

        print(a)
        print(b)
        
        b = 100
        print(b)
        
        let strConvert: String = String(b)
        print("stringConvert",strConvert)

        let  intConvert: Int  = Int(strConvert)!
        print("Int convert",intConvert)
        
        print(x)
        print(str)
        print("Hello world")
        
        
        print("- - - - - - -- - -- - - -- - - -- - - -- - - - --")

        first()
        second(a: 100)
        third(a: 100 ,b: 100.5)
        
        print("fourth-->",fourth(100, 100))
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func first() {
        print("first method")
    }
    
    func second(a: Int) {
        print("second method",a)
    }
    
    func third(a: Int, b: Float) {
        print("third method",a)
        print("third method",b)
    }
    func fourth(_ a: Int,_ b : Int) -> Int {
        print("fourth method",a)
        print("fourth method",b)
        return a+b
    }

}
//Java set
// hash set, linked hash set, map
//

// it will remove duplicates
//un ordered
// the value stored as value based
