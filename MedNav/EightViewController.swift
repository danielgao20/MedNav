//
//  EightViewController.swift
//  MedNav
//
//  Created by Daniel Gao on 7/12/20.
//  Copyright © 2020 Daniel Gao. All rights reserved.
//

import UIKit
import MapKit

class EightViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 37.7631, longitude: -122.4578)
        annotation.title = "UCSF Hospital"
        annotation.subtitle = "Waiting time: 29 mins"
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        mapView.setRegion(region, animated: true)
    }
    
    @IBAction func waitingTimesButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goingToHosList", sender: self)
    }
    @IBAction func addHosButton(_ sender: Any) {
        self.performSegue(withIdentifier: "addaHosButton", sender: self)
    }
    

}
