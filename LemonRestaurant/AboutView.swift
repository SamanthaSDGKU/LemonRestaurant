//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 02/07/25.
//

import SwiftUI

struct AboutView: View {
    @State private var orders = 10
    @State private var userName = ""
    @State private var reservations = 0 // reservation variable
    var body: some View {
        VStack{ // alignment: .leading .center .trailing
            Text("Welcome \(userName) to Little Lemon!")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit( )
                .frame(height: 80)
            Text("You've order \(orders) times")
            Button("Order again"){
                orders += 1
            }
            Divider()
            Spacer()
            //challenge add another button to reset to 0 the orders
            Button("Reset"){
                orders = 0
            }
            TextField("Enter your name",text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Add people to the reservation"){
                reservations += 1
                // add reservation btn , when it's clicked increase the reservesation variable
            }
            Text("Hi \(userName), you have order a table for \(reservations) today")
                .font(.title3)
                .padding()
            Text(String(repeating: "🍽️" , count: reservations))
            // display the 🍽️ as many reservations we have
            // String(repeating: , count:)
            Stepper("Guests: \(reservations)", value: $reservations, in: 1...10)
        }
       
    }
}

#Preview {
    AboutView()
}
