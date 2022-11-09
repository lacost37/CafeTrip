//
//  ViewControllerTwo.swift
//  CafeTrip
//
//  Created by Mac on 08.11.2022.
//

import UIKit

class ViewControllerTwo: UIViewController {
    @IBOutlet var fioLabel: UITextField!
    @IBOutlet var numberOfGuests: UITextField!
    @IBOutlet var numberOfTable: UITextField!
    
    @IBOutlet var buttonCheck: UIButton!
   
    @IBOutlet var switchTable: UISwitch!
    @IBOutlet var switchMoney: UISwitch!
    @IBOutlet var switchVip: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // text field
        
        
        // switch
        switchTable.isOn = true
        switchMoney.isOn = false
        switchVip.isOn = false
        
        // button
        buttonCheck.layer.cornerRadius = 15
    }

   // Action
    @IBAction func checkButtonAction(_ sender: Any) {

        alertCheck(title: "Выставить чек?", message: "", style: .alert)
        
    }
    @IBAction func numOfTableAction(_ sender: Any) {
        
    }
    
    
    // Function
    func alertCheck(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Да", style: .default) { (action) in
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerThree") as! ViewControllerThree
            self.navigationController?.pushViewController(newVC, animated: true)
            let text = self.fioLabel.text
            newVC.textFromVC = text
            let textNumGu = self.numberOfGuests.text
            newVC.textNumGuFromVC = textNumGu
            let textNumTa = self.numberOfTable.text
            newVC.textNumTaFromVC = textNumTa
        }
        let action2 = UIAlertAction(title: "Отмена", style: .cancel)
        alertController.addAction(action)
        alertController.addAction(action2)
        self.present(alertController, animated: true)
    }
    
}
