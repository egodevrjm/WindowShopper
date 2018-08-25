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
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
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
        if let wageText = wageText.text, let priceText = priceText.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorTapped(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        priceText.text = ""
    }
    


}

