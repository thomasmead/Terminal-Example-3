//
//  JulianDate.swift
//  First Terminal example
//
//  Created by Thomas Mead on 1/27/21.
//

import Foundation
import DateBuilder

class JulianDate : DateFormatter{

    init(_ a_name:String){
        isSet = false
        date = Date()
        name = a_name
        super.init()
    }
    

    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    var dateComponents: DateComponents
    var isSet: Bool
    var name: String
    let date: Date
    
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
        return date.timeIntervalSince1970.description
    }
    func echo(a_string: String) {
        print(a_string)
    }
    func number(_ a_num : Double) -> Double {
        let result = a_num
        return result
    }

}
