//
//  ViewController.swift
//  Where is Teji's
//
//  Created by Stoyanov, Jennifer N on 12/2/18.
//  Copyright © 2018 Stoyanov, Jennifer N. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    //Map
    @IBOutlet weak var map: MKMapView!
    
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegion(center: myLocation, span: span)
        map.setRegion(region, animated: true)
        
        
        self.map.showsUserLocation = true
        
    }
    mapView.userLocation.coordinate
    currentLocation!.distance(from: latitudeDelta: 30.266546 longitudeDelta: -97.736376)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        
        
    }


}

