//
//  JulianDate.swift
//  First Terminal example
//
//  Created by Thomas Mead on 1/27/21.
//

import Foundation
import DateBuilder

class JulianDate {

    init(_ a_name:String){
        isSet = false
        date = Date()
        name = a_name
        dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        dateFormatter.dateFormat = "MM/dd/yyyy"
        dateComponents = DateComponents()
//        super.init()
//        self.dateStyle = .full
//        self.timeStyle = .full
//      dateString = string(from: Date)
    }
    

    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    var dateComponents: DateComponents
    let farFutureDate = Date.distantFuture
    var isSet: Bool
    var name: String
    let date: Date
    let dateFormatter : DateFormatter
    let dateComponents : DateComponents
    let calendar = Calendar.current


    var dateString : String {return dateFormatter.string(from: date)}
    
    var dateFromString : Date? {return dateFormatter.date(from: "12/31/1947")}
    
    var components : DateComponents {return  calendar.dateComponents([Calendar.Component.day,Calendar.Component.month, Calendar.Component.year], from: date)}
    
    
    //    var dateComponents = DateComponents
    

    func testInout(appendage: String, base: String)-> String {
        let result = base + appendage
        return result
    }
    
    
    func reset() {
        if isSet == true {
            isSet = false
        }
        else {
            isSet = true
        }
    }
    func changeName(_ a_name: String) {
        name = a_name
    }
    func currentDate(){
        print(date.timeIntervalSince1970)
    }
    func nextDate() -> String {
        return ""
    }
    func echo(a_string: String) {
        print(a_string)
    }
    func number(_ a_num : Double) -> Double {
        let result = a_num
        return result
    }

}
