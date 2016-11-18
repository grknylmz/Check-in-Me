//
//  ViewController.swift
//  CheckMe
//
//  Created by Gurkan Yilmaz on 23/10/16.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import Firebase
import Foundation



class CheckInVC: UIViewController , CLLocationManagerDelegate {
    
    var ref : FIRDatabaseReference!
    var locationManager: CLLocationManager!
    var  userCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
    var person : Person?
    
    @IBOutlet weak var map: MKMapView!
    
    @IBAction func checkIn(_ sender: Any) {
        
        self.createDBObjectTap(person : person! )
        view.makeToast(message: "Konumunuz gönderildi" , duration: 1 , position: "center" as AnyObject )
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        //initialize Firebase
        
        ref = FIRDatabase.database().reference()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        if (CLLocationManager.locationServicesEnabled())
        {
            locationManager = CLLocationManager()
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
        
        person = Person( title: "Gökhan Yılmaz" , coordinate: userCoordinate , uname : "gyilmaz" )
        
        self.view.backgroundColor = UIColor(red:0.96, green:0.96, blue:0.98, alpha:1)
        self.title = "Konum Bilgisi"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named : "ic_menu"),
                                                                style: UIBarButtonItemStyle.plain,
                                                                target: self,
                                                                action: #selector(self.menu))
        //activityIndicator.isHidden = true
    }
    
    
    
    func menu() {
        self.openSideMenu()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        
        
        let location = locations.last! as CLLocation
        
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        userCoordinate = center
        person?.setLoc(_coordinate: userCoordinate)
        map.addAnnotation(person!)
        map.selectAnnotation(map.annotations[0], animated: true)
        self.map.setRegion(region, animated: true)
        
    }
    
    @IBAction func onExit(_ sender: Any) {
        let refreshAlert = UIAlertController(title: "Uyarı", message: "Çıkmak istediğinize emin misiniz? ", preferredStyle: UIAlertControllerStyle.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Evet", style: .default, handler: { (action: UIAlertAction!) in
            exit(0);
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Hayır", style: .cancel, handler: { (action: UIAlertAction!) in
            //print("Handle Cancel Logic here")
        }))
        
        present(refreshAlert, animated: true, completion: nil)
        
    }
    
    
    func createDBObjectTap( person : Person ){
        let uname = person.getUserName()
        let coordinate = person.getCoordinates()
        let currentDate = person.getCurrentDate()
        let title = person.getTitle()
        //let locationName = person.getLocationName()
        
        let lat = coordinate.latitude
        let lon = coordinate.longitude
        
        
        self.ref.child("users").child(uname).setValue(["latitude" : "\(lat)" , "longtitude" : "\(lon)", "date" : currentDate , "title" : title , "uname" : uname ])
        
    }
    
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let destinationNavigationController = segue.destination as! UINavigationController
        let targetController = destinationNavigationController.topViewController as! ChatVC
        
        targetController.senderId = person?.getUserName()
        targetController.senderDisplayName = person?.getTitle()
        
    }
}

