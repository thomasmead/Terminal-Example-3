//
//  testClass.swift
//  First Terminal example
//
//  Created by Thomas Mead on 1/30/21.
//

import Foundation

class testClass{
    var name: String
    init(_ a_name: String){
    name = a_name
    }
    
    func printName(){
        print(name)
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
