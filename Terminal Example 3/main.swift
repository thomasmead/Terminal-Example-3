//
//  main.swift
//  Terminal Example 3
//
//  Created by Thomas Mead on 2/7/21.
//

import Foundation
import CoreXLSX

print("Hello, World!")

var someInts = [1,2,3,10,5,6,7,8]
print(someInts[3])
var sortedInts = someInts.sorted()
func revSort (_ int1: Int, _ int2: Int) -> Bool {
    return int1 > int2 ? true : false
}

var revSortedInts = someInts.sorted(by: revSort(_:_:))

//var julian = JulianDate.init(name: "test new init", 1947, 12, 31, 12, 30, 0.5)

var test = testClass("excel name")
test.printName()
print(test.name)
var file = test.file

let wkb  = try file.parseWorkbooks()
var wkbCount = 0
var rowCount = 0
var colCount = 0

var pathDictionary = [String : Worksheet]()

for (name, path) in try file.parseWorksheetPathsAndNames(workbook: wkb[0]) {
  if let worksheetName = name {
    wkbCount += 1
    print("count: \(wkbCount) This worksheet has a name: \(worksheetName) and path: \(path)")
  }
    let worksheet = try file.parseWorksheet(at: path)
    pathDictionary[name!] = worksheet
    rowCount = 0
    for row in pathDictionary[name!]?.data?.rows ?? [] {                      //worksheet.data?.rows
        rowCount += 1
        colCount = 0
      for c in row.cells {
        colCount += 1
        print("row \(rowCount) col \(colCount) value \(c.value ?? "empty")")
      }
    }
  }


var newrows = pathDictionary["inputs"]!.data?.rows ?? []
var newrow = newrows[2]
var newcell = newrow.cells[2]


print("new cell content \(newcell.value ?? "default") from row \(newrow.cells[3].value ?? "default") from newrows\(newrows[2].cells[2].value)")

//var paths = try test.file.parseWorksheetPaths()
var paths = try file.parseWorksheetPaths()
var workbooks = try file.parseWorkbooks()
var worksheet = try file.parseWorksheet(at: paths[0])

var workbook = workbooks[0]
var worksheets = workbook.sheets.items
var worksheetFromWorksheets = worksheets[0]
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
testString = cellArray[0].value

//print(worksheet.data!.rows)



var count = 0
for i in rows!{

    row = i
    cellArray = row!.cells
    var item: String
    for ix in i.cells{  //1...cellArray.count-1{
        item = ix.value ?? "empty"  //cellArray[ix].value!
//        if item != nil{
        print("row \(count) - cell \(ix.value ?? "empty") -- \(item)")
//        }
//        else{
//            print("\(ix) was nil")
        }
        count += 1
    }


print(paths[0])
print(data!)
print(cell?.dateValue)
print(workbook.views!)


print(test.name)
//var julian = JulianDate(name: "test julian name")
var julian = JulianDate.init(name: "test new init",
                             -1001,
                             8,
                             17,
                             21,
                             36,
                             0)

var testDateComponents = DateComponents.init(
    calendar: Calendar(identifier: Calendar.Identifier.gregorian),
    year: -4712,
    month: 1,
    day: 1,
    hour: 12,
    minute: 0, 
    second: 0,
    nanosecond: 0)
var julianFromComponents = JulianDate.init(name: "new_name", components: testDateComponents)
print(julian.juliandate())
//print(julian.term1())
//print(julian.term2())
//print(julian.fractionalDayOfMonth())
//print(julian.gregorianShift())
print(julianFromComponents.juliandate())
//print(julianFromComponents.term1())
//print(julianFromComponents.term2())
//print(julianFromComponents.fractionalDayOfMonth())
//print(julianFromComponents.gregorianShift())

print(julian.fractionalDayOfMonth())

print(julian.name)
print(julian.dateComponents.description)
print(julianFromComponents.name)
print(julianFromComponents.dateComponents.description)
print("This change made on macbook")
print(julian.date.description)
print("a test change to try merge")



print(julian.dateString)


print(julian.dateComponents.year!)

print(julian.nextDate())
