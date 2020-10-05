//
//  ViewController.swift
//  Project12
//
//  Created by Kei on 2020/09/23.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zeinukiText: UITextField!
    @IBOutlet weak var syouhizeiritsuText: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    
    let userDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let money = userDefaults.string(forKey: "money") {
            self.syouhizeiritsuText.text = money
        }
    }

    @IBAction func calcMoney(_ sender: UIButton) {
        let zeinuki = Int(zeinukiText.text!)
        let syouhizei = Float(syouhizeiritsuText.text!)
        let total = Int(syouhizei! / 100 * Float(zeinuki!) + Float(zeinuki!))
        totalLabel.text = "\(total)"
        
        userDefaults.set(self.syouhizeiritsuText.text, forKey: "money")
        userDefaults.synchronize()

    }
    
}

