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
var paths = try test.file.parseWorksheetPaths()
var worksheet = try test.file.parseWorksheet(at: paths[4])


var workbook = workbooks[0]
var worksheets = workbook.sheets.items
//var worksheet = worksheets[0]
var rows = worksheet.data?.rows
var row = rows?[1]
var cells = row?.cells
var cell = cells?[1]
var data = cell?.value
var cellArray : [Cell]
row = rows?[3]
//cells = row?.cells

cellArray = row!.cells

var testString = cellArray[1].value
testString = cellArray[1].value
testString = cellArray[4].value

print(worksheet.data?.rows)
for i in rows!{
    var count = 1
    row = i
    cellArray = row!.cells
    for ix in 1...cellArray.count-1{
       var item = cellArray[ix].value
        if item != nil{
            print("row \(count) - cell \(ix) -- \(item!)")
        }
        else{
            print("\(ix) was nil")
        }
        
    }
    count += 1
}

print(paths[1])
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
