//
//  Metar.swift
//  ruckenwind
//
//  Created by Matthew Hull on 20/12/2016.
//  Copyright © 2016 Matthew Hull. All rights reserved.
//

import Foundation

class Metar: AviationWeatherReport {
    
    public let obsTime: Date
    public let temperature: Int
    public let dewpoint: Int
    public let windspeed: Int
    public let windDir: String
    public let ceiling: String
    public let coverage: String
    public let visibilitySM: Double
    public let visibilityM: Double
    public let altimHPa: Double
    public let altimInHg: Double
    public let oldReport: Bool
    
    init(siteId: String, site: String, lat: Double, lon: Double, fltCat: String, rawText: String
    , obsTime: Date, temperature: Int, dewpoint: Int, windspeed: Int, windDir: String
    , ceiling: String, coverage: String, visibilitySM: Double, visibilityM: Double, altimHPa: Double
    , altimInHg: Double, oldReport: Bool) {
        
        self.obsTime = obsTime
        self.temperature = temperature
        self.dewpoint = dewpoint
        self.windspeed = windspeed
        self.windDir = windDir
        self.ceiling = ceiling
        self.coverage = coverage
        self.visibilitySM = visibilitySM
        self.visibilityM = visibilityM
        self.altimHPa = altimHPa
        self.altimInHg = altimInHg
        self.oldReport = oldReport
        
        super.init(siteId: siteId, site: site, lat: lat, lon: lon, fltCat: fltCat, rawText: rawText)
        
    }
    
 
    public func isOldReport(currentTime: Date, issueTime: Date) -> Bool {
        return false
    }
    
    public func convertToHpa(fromInHg: Double) -> Double {
        return 0.0
    }
    
    public func convertToInHg(fromHpa: Double) -> Double {
        return 0.0
    }
    
    private func formatIssueTime(date: Date) ->  Date {
        let date = Date()
        return date
    }
    
    
    
    
}
