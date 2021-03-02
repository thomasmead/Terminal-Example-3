//
//  testClass.swift
//  First Terminal example
//
//  Created by Thomas Mead on 1/30/21.
//

import Foundation
import CoreXLSX




class testClass{
    var name: String
    init(_ a_name: String){
    name = a_name
    file = XLSXFile(filepath: "/users/thomasmead/Documents/Hobby_Projects/Solar/Parameter_tables/solar_input_data.xlsx")!
//        do {workbooks = try file.parseWorkbooks()
//        } catch {
//            print("error thrown")
//       }
    }
    
//    let workbooks : [Workbook]
    let file : XLSXFile

    
    func printName(){
        print(name)
    }
    

    struct TestStruct : Decodable {
        let test : Int
        init(_ n: Int) {
            test = n
        }
    }
    
    func removeChar(_ c: Character, s: inout String)-> Int{
//        var s = s
        var howMany = 0
        while let ix = s.firstIndex(of: c){
            s.remove(at: ix)
            howMany += 1
        }
        return howMany
    }
    
}
