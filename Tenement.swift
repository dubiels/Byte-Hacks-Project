//
//  Tenement.swift
//  ImmiRent
//
//  Created by Lola on 8/3/20.
//  Copyright © 2020 Karolina Dubiel. All rights reserved.
//

import Foundation

class Tenement
{
    var name : String
    var burough : String
    var latitude : Double
    var longitude : Double
    var image : String
    var tag1: String
    var tag2: String
    
    init(name : String, burough : String, latitude : Double, longitude : Double, image: String, tag1: String, tag2: String)
    {
        self.name = name
        self.burough = burough
        self.latitude = latitude
        self.longitude = longitude
        self.image = image
        self.tag1 = tag1
        self.tag2 = tag2
        
    }
    
    convenience init()
    {
        self.init(name : "", burough: "", latitude: 0, longitude: 0, image: "", tag1: "", tag2: "")
    }
}
