//
//  ContentView.swift
//  Julian Date App
//
//  Created by Thomas Mead on 3/2/21.
//

import SwiftUI

struct ContentView: View {
    @State var julian = JulianDate.init(name: "test new init",
                                        -1001,
                                        8,
                                        17,
                                        21,
                                        36,
                                        0)
    @State var year : String = ""

    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Input")){
                    TextField("Date field", text: $year)
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
        }
        Text(julian.name)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
