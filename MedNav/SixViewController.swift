//
//  SixViewController.swift
//  MedNav
//
//  Created by Daniel Gao on 7/12/20.
//  Copyright © 2020 Daniel Gao. All rights reserved.
//

import UIKit

class SixViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
    }

     @objc func dismissKeyboard() {
         view.endEditing(true)
     }
    
    @IBAction func patientlog(_ sender: Any) {
        self.performSegue(withIdentifier: "helloJack", sender: self)
    }
    

}
