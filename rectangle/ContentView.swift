//
//  ContentView.swift
//  rectangle
//
//  Created by Jesús Francisco Leyva Juárez on 17/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            top()
            Spacer()
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct top: View {
    @State private var selectedFlavor = Flavor.chocolate
    var body: some View {
        VStack {
            HStack{
                
                Picker("Flavor", selection: $selectedFlavor) {
                    Text("Chocolate").tag(Flavor.chocolate)
                    Text("Vanilla").tag(Flavor.vanilla)
                    Text("Strawberry").tag(Flavor.strawberry)
                }
                
            }.pickerStyle(SegmentedPickerStyle())
            Text("Selected flavor: \(selectedFlavor.rawValue)")
            
            if selectedFlavor.id.hasPrefix("chocolate") {
                chocolate()
            } else if selectedFlavor.id.hasPrefix("vanilla") {
                vanilla()
            }
            else if selectedFlavor.id.hasPrefix("strawberry") {
                strawberry()
            }
             //   .foregroundColor(selectedFlavor.id.hasPrefix("vanilla") ? .yellow: .blue)
               // .foregroundColor(selectedFlavor.id.hasPrefix("strawberry") ? .red: .blue)
            
        }
        
    }
}

enum Flavor: String, CaseIterable, Identifiable {
    case chocolate
    case vanilla
    case strawberry
    var id: String { self.rawValue }
}


struct chocolate: View {
    var body: some View {
        Color.gray
        
            
    }
}
struct vanilla: View {
    var body: some View {
        Color.yellow
    }
}
struct strawberry: View {
    var body: some View {
        Color.red
    }
}
