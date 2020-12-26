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
        
        longPressGestureRecognise()
        
        
        
        if activePlace != -1 {
            if let name = places[activePlace]["name"]{
                if let lat = places[activePlace]["lat"]{
                    if let lon = places[activePlace]["lon"]{
                        if let latitude = Double(lat){
                            if let longitude = Double(lon){
                                let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                                let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                                let region = MKCoordinateRegion(center: coordinate, span: span)
                                self.myMap.setRegion(region, animated: true)
                                
                                let annotation = MKPointAnnotation()
                                annotation.coordinate = coordinate
                                annotation.title = name
                                self.myMap.addAnnotation(annotation)
                                 
                            }
                        }
                    }
                }
            }
        }
    }

    
    func longPressGestureRecognise(){
        let longPressGestureRecognise = UILongPressGestureRecognizer(target: self, action: #selector(longpress(gesture:)))
        longPressGestureRecognise.minimumPressDuration = 3
        myMap.addGestureRecognizer(longPressGestureRecognise)
        
    }
    
    
    @objc func longpress(gesture: UIGestureRecognizer){
        
        let touchPoint = gesture.location(in: self.myMap)
        let newCoordinate = self.myMap.convert(touchPoint, toCoordinateFrom: self.myMap)
        print(newCoordinate)
        let annotation = MKPointAnnotation()
        annotation.coordinate = newCoordinate
        annotation.title = "Temp title"
        self.myMap.addAnnotation(annotation)
        
         
        
        
    }

}

