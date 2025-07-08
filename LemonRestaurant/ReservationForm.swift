//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 07/07/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName:String = ""
    @State private var guestCount:Int = 0
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Insert name", text:$userName)
                    
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...10)
                    
                    
                }
                Text("test \(guestCount)")
                
            }
        }
        .navigationTitle("Book a table")
       
//        Text(userName)
    }
}
#Preview {
    ReservationForm()
}
