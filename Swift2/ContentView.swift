//
//  ContentView.swift
//  Swift2
//
//  Created by Christer Lindqvist on 2023-11-13.
//

import SwiftUI

struct ContentView: View {
    @State var theList = [""]
    @State var name = ""
    
    var body: some View {
   
        
        VStack {
            HStack {
                Spacer()
                TextField("", text: $name )
                    
                Button( action: {
                    if ( name != "") {
                        theList.append(name)
                        name = ""
                    }
                }) {
                    Text("Lägg till")
                }
                Spacer()
            }

            Spacer()
            
            List(theList, id:  \.self ) { aPerson in
                 personListView(name: aPerson)
             }
            
            Spacer()
            
            Button( action: {
                theList.removeAll()
            }) {
                Text("Nollställ")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
