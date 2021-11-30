//
//  ContentView.swift
//  Swift Hack and Share
//
//  Created by Ryan Lim on 11/29/21.
//
//  To do list
//  *Create a date picker
//  *Create a scroller

import SwiftUI

struct ContentView: View {
    @State private var color = Color.white
    @State private var date = Date()
    var body: some View {
        VStack {
            Text("Pickers")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Text("Color Picker")
                .font(.title)
            ColorPicker("Choose Your Favorite Color", selection: $color)
                .frame(width: 150, height: 75, alignment: .center)
            Text("Date Picker")
                .font(.title)
            HStack {
                Text("Choose Today's Date and Time")
                    .padding()
            }
            DatePicker("", selection: $date)
                .frame(width: 150, height: 25, alignment: .center)
                .padding()
            Text("Today's Date is \(date)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
