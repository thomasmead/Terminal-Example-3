//
//  main.swift
//  Terminal Example 3
//
//  Created by Thomas Mead on 2/7/21.
//

import Foundation
import CoreXLSX

print("Hello, World!")

var test = testClass("name")

try test.file.parseWorkbooks()
var workbook = try test.file.parseWorkbooks()
var path = try test.file.parseWorksheetPaths()
//var worksheet = try test.file.parseWorksheet(at: path)

print(test.name)
var julian = JulianDate("julian_name")
print(julian.name)
print("This change made on macbook")
print(julian.date.description)
print("a test change to try merge")


print(julian.farFutureDate)
//print(julian.nextDate().description)
print(julian.dateString)

print(julian.dateFromString!)

print(julian.components.year!)

print(julian.nextDate())
