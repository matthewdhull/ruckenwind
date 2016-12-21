//
//  Taf.swift
//  ruckenwind
//
//  Created by Matthew Hull on 21/12/2016.
//  Copyright © 2016 Matthew Hull. All rights reserved.
//

import Foundation

class Taf: AviationWeatherReport {
    
    public let issueTime: Date
    public let validTimeFrom: Date
    public let validTimeTo: Date
    public let timeGroup: Int
    public let fcstType: String
    public let windspeed: Int
    public let windDir: String
    public let visibilitySM: Double
    public let visibilityM: Double
    public let ceiling: String
    public let coverage: String
    public let expiredReport: Bool
    public let isPrevailing: Bool
    
    
    init(siteId: String, site: String, lat: Double, lon: Double, fltCat: String, rawText: String
        , issueTime: Date, validTimeFrom: Date, validTimeTo: Date, timeGroup: Int, fcstType: String
        , windspeed: Int, windDir: String, visibilitySM: Double, visibilityM: Double
        , ceiling: String, coverage: String, expiredReport: Bool, isPrevailing: Bool) {
        
        self.issueTime = issueTime
        self.validTimeFrom = validTimeFrom
        self.validTimeTo = validTimeTo
        self.timeGroup = timeGroup
        self.fcstType = fcstType
        self.windspeed = windspeed
        self.windDir = windDir
        self.visibilitySM = visibilitySM
        self.visibilityM = visibilityM
        self.ceiling = ceiling
        self.coverage = coverage
        self.expiredReport = expiredReport
        self.isPrevailing = isPrevailing
        
        super.init(siteId: siteId, site: siteId, lat: lat, lon: lon, fltCat: fltCat, rawText: rawText)
        
    }
    
    private func isExpiredReport(currentTime: Date, issueTime: Date) ->  Bool {
        return false
    }
    
    private func formatIssueTime(date: Date) -> Date {
        let date = Date()
        return date
    }
}
