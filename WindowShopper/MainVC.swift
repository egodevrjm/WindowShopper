//
//  ViewController.swift
//  WindowShopper
//
//  Created by Ryan Morrison on 25/08/2018.
//  Copyright © 2018 Ryan Morrison. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
    }
    
    func setupButton(){
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.9289746881, green: 0.4607154131, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.titleLabel?.font = UIFont(name: "Avenir-Book", size: 22)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageText.inputAccessoryView = calcButton
        priceText.inputAccessoryView = calcButton
    }
    
    @objc func calculate() {
        
    }


}

