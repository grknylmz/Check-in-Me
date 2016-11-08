//
//  ManagerVC.swift
//  Check-in Me
//
//  Created by Gurkan Yilmaz on 28/10/16.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import CoreLocation
import MapKit

var personArray = [Person]()

class ManagerVC: UIViewController {
    var ref: FIRDatabaseReference!

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    func getData() {
        
        ref.child("users").queryOrderedByKey().observe(.childAdded, with: { snapshot in
            if let source = snapshot.value as? [String:AnyObject] {
                let date = source["date"] as! String
                print("*************************")
                print(date)
                let uname = source["uname"] as! String
                print(uname)
                let latitude = source["latitude"] as! String
                print(latitude)
                let longtitude = source["longtitude"] as! String
                print(longtitude)
                let title = source["title"] as! String
                print(title)
                let locationName  = ""
                print(locationName)
                print("*************************")
                
                let lat = CLLocationDegrees(latitude)
                let lon = CLLocationDegrees(longtitude)
                
                
                let fireLocat = CLLocationCoordinate2D(latitude: lat! , longitude: lon!)
                let firePerson = Person( title: title , coordinate : fireLocat , uname : uname )
                personArray.append(firePerson)
                //( title : String, coordinate: CLLocationCoordinate2D  , locationName : String , uname : String ) {
                
            }
            
            self.addPersonToMap()
            
            
        })
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let center = CLLocationCoordinate2D(latitude: 41 , longitude: 29)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.6, longitudeDelta: 0.6))
        
        self.mapView.setRegion(region, animated: true)
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        ref = FIRDatabase.database().reference()
        
        self.getData()
    }
    
    
    func addPersonToMap(){
        for i in 0  ..< personArray.count
        {
            mapView.addAnnotation(personArray[i])
        }
    }
    
}

