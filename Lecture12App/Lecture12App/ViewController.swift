//
//  ViewController.swift
//  Lecture12App
//
//  Created by Sergej Dubovskij on 2022-10-18.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func myButton(_ sender: Any) {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string:String) -> Bool {
        return true
        
    }


    
}

