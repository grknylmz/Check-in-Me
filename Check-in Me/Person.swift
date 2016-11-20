//
//  Person.swift
//  CheckMe
//
//  Created by Gurkan Yilmaz on 23/10/16.
//  Copyright © 2016 Gurkan Yilmaz. All rights reserved.
//

import Foundation
import MapKit



class Person : NSObject, MKAnnotation {
    var title : String?
    var _latitude : Int?
    var _longtitude : Int?
    var _date : Int?
    var _time : Int?
   // let  locationName: String?
    var _uname : String!
    
    //  let _locationName: String
    // let _discipline: String
    
    
    
    var coordinate: CLLocationCoordinate2D
    
    init( title : String, coordinate: CLLocationCoordinate2D   , uname : String ) {  //locationName : String
        self.title = title
        self.coordinate = coordinate
        //self.locationName = locationName
        self._uname = uname
        super.init()
        
    }
    
    func setDate( date : Int ) -> Bool {
        self._date = date
        return true
    }
    func setLoc ( _coordinate : CLLocationCoordinate2D ){
        self.coordinate = _coordinate
    }
    func getUserName()->String {
        return self._uname
    }
    func getCoordinates() -> CLLocationCoordinate2D {
        return self.coordinate
        //return "\(self.coordinate.latitude) , \(self.coordinate.longitude)"
    }
    
    func getTitle()-> String {
        return self.title!
    }
   // func getLocationName()-> String {
   //     return self.geocodeAdress(coordinate: self.getCoordinates() )
   // }
    
    
    
    func getCurrentDate()->String{
        let date = Date()
        let calendar = Calendar.current
        
        
        
        
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let seconds = calendar.component(.second, from: date)
        
        let dateString = "\(hour):\(minutes):\(seconds) - \(day).\(month)"
        print(dateString)
        return dateString
    }
    
    
    
    func geocodeAdress( coordinate : CLLocationCoordinate2D ) -> String {
        var str: String?
        var loc : String?
        var cit : String?
        
        let geoCoder = CLGeocoder()
        let location = CLLocation(latitude: coordinate.latitude, longitude: coordinate.longitude)
        //TODO is not working!
        geoCoder.reverseGeocodeLocation(location, completionHandler: { (placemarks, error) -> Void in
            
            // Place details
            var placeMark: CLPlacemark!
            placeMark = placemarks?[0]
            
            // Address dictionary
            print(placeMark.addressDictionary!)
            
            // Location name
            if let locationName = placeMark.addressDictionary!["Name"] as? NSString {
                loc = locationName as String
            }
            
            // Street address
            if let street = placeMark.addressDictionary!["Thoroughfare"] as? NSString {
                str = street as String
            }
            
            // City
            if let city = placeMark.addressDictionary!["City"] as? NSString {
                cit = city as String
            }
            
            // Zip code
            if let zip = placeMark.addressDictionary!["ZIP"] as? NSString {
                print(zip)
            }
            
            // Country
            if let country = placeMark.addressDictionary!["Country"] as? NSString {
                print(country)
            }
            
        })
        print("\(str) \(loc) \(cit)" )
        return "Is not working!" //""\(loc) \(str) \(cit)"
    }
    
}

