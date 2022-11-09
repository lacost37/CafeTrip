//
//  ViewControllerThree.swift
//  CafeTrip
//
//  Created by Mac on 09.11.2022.
//

import UIKit

class ViewControllerThree: UIViewController {
    var textFromVC: String!
    var textNumGuFromVC: String!
    var textNumTaFromVC: String!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numGue: UILabel!
    @IBOutlet var numOfTab: UILabel!
    @IBOutlet var buttonChtck: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // label
        nameLabel.text = textFromVC
        numGue.text = "Количество гостей: " + textNumGuFromVC
        numOfTab.text = "Номер стола: " + textNumTaFromVC
        // button
        buttonChtck.layer.cornerRadius = 15
    }
    

    

}
