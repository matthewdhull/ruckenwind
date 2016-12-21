//
//  AviationWeatherReport.swift
//  ruckenwind
//
//  Created by Matthew Hull on 20/12/2016.
//  Copyright © 2016 Matthew Hull. All rights reserved.
//

import Foundation


class AviationWeatherReport: NSObject {
    
    public var siteId: String
    public var site: String
    public var lat: Double
    public var lon: Double
    public var fltCat: String
    public var rawText: String
    
    init(siteId: String, site: String, lat: Double, lon: Double, fltCat: String, rawText: String) {
        self.siteId = siteId
        self.site = site
        self.lat = lat
        self.lon = lon
        self.fltCat = fltCat
        self.rawText = rawText
    }
}
