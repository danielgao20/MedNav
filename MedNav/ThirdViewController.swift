//
//  ThirdViewController.swift
//  MedNav
//
//  Created by Daniel Gao on 7/12/20.
//  Copyright © 2020 Daniel Gao. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
            view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    var list = ["Total Waiting Time: 19 min", "1. Springsteen, B. (8 min)", "2. Joel, B. (11 min)"]
    
    @IBOutlet weak var patientList: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            self.list.remove(at: indexPath.row)
            patientList.reloadData()
        }
    }
    
    
    
    @IBAction func addPatientButton(_ sender: Any) {
        self.performSegue(withIdentifier: "addpatient", sender: self)
    }
    
}
