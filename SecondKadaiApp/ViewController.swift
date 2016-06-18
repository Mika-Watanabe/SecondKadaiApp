//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 渡邊未佳 on 2016/06/17.
//  Copyright © 2016年 mika.watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        name.delegate = self
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField){
        print("textFieldDidBeginEditing:" + textField.text!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
            let resultViewController:ResultViewController = segue.destinationViewController as! ResultViewController
        resultViewController.result = self.name.text!
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
        
}