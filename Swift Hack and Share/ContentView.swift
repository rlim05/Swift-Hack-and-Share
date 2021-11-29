//
//  ContentView.swift
//  Swift Hack and Share
//
//  Created by Ryan Lim on 11/29/21.
//

import SwiftUI

struct ContentView: View {
    @State private var color = Color.white
    var body: some View {
        VStack {
            Text("Pickers")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            ColorPicker("Color Picker", selection: $color)
                .frame(width: 150, height: 150, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
