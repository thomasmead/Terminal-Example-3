//
//  JulianDate.swift
//  First Terminal example
//
//  Created by Thomas Mead on 1/27/21.
//

import Foundation
import DateBuilder

class JulianDate {

        required init(name a_name:String){
        date = Date()
        name = a_name
        dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        dateFormatter.dateFormat = "MM/dd/yyyy"
        dateComponents = DateComponents()
        year = ""
//        super.init()
//        self.dateStyle = .full
//        self.timeStyle = .full
//      dateString = string(from: Date)
            calendar = Calendar(identifier: Calendar.Identifier.buddhist)
    }
        convenience init(name a_name: String, _ yyyy: Int, _ mm: Int, _ dd: Int, _ hh: Int, _ ss: Int, _ fraction: Double) {
        self.init(name: a_name)
        dateComponents.setValue(yyyy, for: .year)
        dateComponents.year = yyyy
        dateComponents.month = mm
        dateComponents.day  = dd
        dateComponents.hour = hh
        dateComponents.second = ss
        dateComponents.nanosecond = Int((fraction * 1000000000).rounded())
        if dateComponents.date == nil {
            date = Date()
            print("Using current as default date")
        }
        else {
            date = dateComponents.date!
        }
            year = yyyy.description
    }
    
        convenience init(name a_name: String, components comps: DateComponents) {
            self.init(name: a_name)
            dateComponents = comps
            if dateComponents.date == nil {
                date = Date()
                print("Using current as default date")
            }
            else {
                date = dateComponents.date!
            }
    }


    
    

    var name: String = "default name"
    var date: Date
    var year: String
    let dateFormatter : DateFormatter
    var dateComponents : DateComponents
    let deltaT = 67.0
    let calendar : Calendar

    var dateString : String {return dateFormatter.string(from: date)}
    
//    var components : DateComponents {return  calendar.dateComponents([Calendar.Component.day,Calendar.Component.month, Calendar.Component.year], from: date)}
    
    
    func nextDate() -> Date {
        
        let futureDate : Date?
        var timeInterval = TimeInterval()
        timeInterval = timeInterval.advanced(by: 30.0)
        
        dateComponents.setValue(1997, for: .year)
        dateComponents.setValue(12, for: .month)
        dateComponents.setValue(31, for: .day)
        dateComponents.setValue(23, for: .hour)
        print(dateComponents)
        print(timeInterval)
        futureDate = Calendar.current.date(from: dateComponents)?.addingTimeInterval(timeInterval)
        print(Calendar.current)
        var nextDay = calendar.nextDate(after: date
                          , matching: dateComponents,matchingPolicy: .nextTime)
        print(nextDay?.description)

        return futureDate! // as Date

    }
    func effectiveYear() -> Int {
        if dateComponents.month! > 2 {
            return dateComponents.year!
        }
        else{
            return dateComponents.year! - 1
        }
    }
    func term1() -> Double {
        return (Double(effectiveYear()) + 4716.0) * 365.25
    }
    
    func term2() -> Double {
        if dateComponents.month! > 2 {
            return (Double(dateComponents.month!) + 1) * 30.6001
        }
        else {
            return (Double(dateComponents.month! + 12) + 1) * 30.6001
        }
    }
    
    func juliandate() -> Double {
        let terms = Int(term1()) + Int(term2())
        let answer = Double(terms) + fractionalDayOfMonth() + Double(gregorianShift())
        return  answer - 1524.5
    }
        
    func fractionalDayOfMonth() -> Double {
        let day = Double(dateComponents.day!)
        let hour = Double(dateComponents.hour!)
        let seconds = Double(dateComponents.second!)
        let totalSeconds = 24.0 * 60 * 60
        return day + ((hour * 60.0 * 60) + seconds) / totalSeconds
    }

    func gregorianShift() -> Int {
        if effectiveYear() > 1550 {
            let a = Int(effectiveYear() / 100)
            return 2 - a + Int(a / 4)
        }
        else {
            return 0
        }
    }
    
    func julianEphemerisDay() -> Double {
        return juliandate() + deltaT / 86400
    }
    
    func julianCentury() -> Double {
        return (juliandate() - 2451545.0) / 36525
    }
    
    func julianEphemerisCentury() -> Double {
        return (julianEphemerisDay() - 2451545) / 36525
    }
    
    func julianEphemerisMellennium() -> Double {   //for 2000 standard epoch
        return julianEphemerisCentury() / 10
    }
}
