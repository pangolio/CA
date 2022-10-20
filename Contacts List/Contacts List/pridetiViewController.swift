//
//  pridetiViewController.swift
//  Contacts List
//
//  Created by Sergej Dubovskij on 2022-10-17.
//

import UIKit

class pridetiViewController: UIViewController {

    var clousure: (((String, String)) -> ())?
    
    @IBOutlet weak var vardasTextField: UITextField!
    @IBOutlet weak var telefonasTextField: UITextField!
    
    @IBAction func prideti(_ sender: Any) {
        clousure! ((vardasTextField.text!, telefonasTextField.text!))
        dismiss(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
