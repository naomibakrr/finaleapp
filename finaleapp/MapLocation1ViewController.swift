//
//  ViewController.swift
//  map
//
//  Created by  Scholar on 7/1/21.
//

import UIKit
import MapKit
import CoreLocation



class MapLocation1ViewController: UIViewController, MKMapViewDelegate{

    let map = MKMapView()
    let coordinate = CLLocationCoordinate2D(latitude: 25.834600, longitude: -80.187798)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(map)
        map.frame = view.bounds
        
        // Do any additional setup after loading the view.
        map.setRegion(MKCoordinateRegion(center: coordinate, span:MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated:false)
        map.delegate = self
        
        addCustomPin()
    }
    private func addCustomPin(){
        
       let pin = MKPointAnnotation()
        pin.title = "Here is the location of Pridelines"
        pin.subtitle = "6360 NE 4th Ct, Miami, FL 33138"
        map.addAnnotation(pin)
        pin.coordinate = coordinate
        
    }
    //
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation)else{
            return nil
        }
        var annotationView = map.dequeueReusableAnnotationView(withIdentifier: "custom")
        
        
        if annotationView == nil{
            
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "custom")
            
            annotationView?.canShowCallout = true
            
        }
        else{
            
        
            annotationView?.annotation = annotation
        }
        
        annotationView?.image = UIImage(named: "smallheart")
        return annotationView
    }


}

