//
//  ViewController.swift
//  My Memories Places
//
//  Created by Сергей Голенко on 25.12.2020.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate{
    
    
    @IBOutlet weak var myMap: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(activePlace)
    }


}

