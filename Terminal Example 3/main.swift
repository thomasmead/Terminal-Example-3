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
var workbooks = try test.file.parseWorkbooks()
var path = try test.file.parseWorksheetPaths()
var worksheet = try test.file.parseWorksheet(at: path[0])

var workbook = workbooks[0]
var worksheets = workbook.sheets
var rows = worksheet.data?.rows
var row = rows?[1]
var cells = row?.cells
var cell = cells?[0]
var data = cell?.value

for ix in cells!{
    var type = ix.type
    var item = ix.value
    print(type)
    print(item!)
}


print(path[1])
print(data!)
print(cell?.dateValue)
print(workbook.views!)


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
