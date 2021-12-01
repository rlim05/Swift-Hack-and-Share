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
    let drinks = ["Sprite", "Coke", "Fanta", "Root Beer", "Mountain Dew", "Pepsi", "Ginger Ale", "Dr Pepper", "Lemonade"]
    @State private var favoriteDrink = "Coke"
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
                .frame(width: 150, height: 65, alignment: .center)
                .padding()
                .datePickerStyle(WheelDatePickerStyle())
            HStack {
                Text("Today's Date is \(date)")
                    .padding()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
