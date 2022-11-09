//
//  ViewController.swift
//  CafeTrip
//
//  Created by Mac on 08.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var textFiledLogin: UITextField!
    @IBOutlet var textFieldPass: UITextField!
    @IBOutlet var buttonSign: UIButton!
    @IBOutlet var rememberLabel: UILabel!
    @IBOutlet var switchRemember: UISwitch!
    @IBOutlet var eyeButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Label
        rememberLabel.textColor = UIColor.black
        // TextField
        textFiledLogin.placeholder = "Username or email"
        textFieldPass.isSecureTextEntry = true
        textFieldPass.placeholder = "Password"
        
        
        // Button
        buttonSign.layer.cornerRadius = 15
       // eyeButton.imageView = UIImage(named: "eye")
        
        
        // Switch
        switchRemember.isOn = false
        switchRemember.addTarget(self, action: #selector(checkIsOn(target:)), for: .valueChanged)
        
    }
    // MARK: - IBAction
    @IBAction func buttonForgotPass(_ sender: Any) {
        alert(title: "Reset the password?", message: "We will send a recovery letter to your email.", style: .alert)
    }
   
    @IBAction func signInAction(_ sender: Any) {
        guard textFiledLogin.hasText && textFieldPass.hasText else { return alert(title: "You left the field empty", message: "Fill in the field.", style: .alert)}
        let newVc = storyboard?.instantiateViewController(withIdentifier: "ViewControllerTwo") as! ViewControllerTwo
        navigationController?.pushViewController(newVc, animated: true)
    }
    
    @IBAction func eyeButtonAction(_ sender: Any) {
        if textFieldPass.isSecureTextEntry {
            textFieldPass.isSecureTextEntry = false
        } else {
            textFieldPass.isSecureTextEntry = true
        }
    }
    
    
    // func alert
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            
        }
        let action2 = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(action)
        alertController.addAction(action2)
        self.present(alertController, animated: true)
        
    }
    

    // Switch func
    @objc func checkIsOn(target: UISwitch) {
        if target.isOn {
            rememberLabel.textColor = UIColor.red
        } else {
            rememberLabel.textColor = UIColor.black
        }
    }
}

