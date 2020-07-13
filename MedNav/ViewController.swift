//
//  ViewController.swift
//  MedNav
//
//  Created by Daniel Gao on 7/11/20.
//  Copyright © 2020 Daniel Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func medProButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToLogIn", sender: self)
    }
    
    @IBAction func patientButton(_ sender: Any) {
        self.performSegue(withIdentifier: "patientLogIn", sender: self)
    }
}

