//
//  ContentView.swift
//  Julian Date App
//
//  Created by Thomas Mead on 3/2/21.
//

import SwiftUI
import UniformTypeIdentifiers

struct TextFile{
    @available(OSX 11.0, *)
    @State var plainText : UTType
    static var readableContentTypes = [""]
}
struct ContentView: View {
    @State var julian = JulianDate.init(name: "test new init now",
                                        -1001,
                                        8,
                                        17,
                                        21,
                                        36,
                                        0)
    @State var year : String = "1998"

    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Input")){
                    TextField("Date field", text: $year)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .foregroundColor(Color.blue)
                        .frame(maxWidth: 200.0, maxHeight: .infinity)
                    TextField("Date field", text: $year)
                        .frame(maxWidth: 200.0, maxHeight: .infinity)
                    Text("Test Case")
                    
                    
                    
                }
            }
        }
        Text(julian.name + year)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
