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
    @State private var reservationDate = Date()
    @State private var allergyNotes = ""
    @State private var showSummary = false

    var body: some View {
        NavigationStack{
            Image("littleLemonLogo")
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Insert name", text:$userName)
                    if !Validation.isValidName(userName){
                        Text("Please insert your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 0...10)
                    if guestCount > 5 {
                        Text("For larger parties, please call us")
                            .font(.caption)
                            .foregroundColor(.red)
                    }
                    DatePicker("Date", selection: $reservationDate, displayedComponents: [.date, .hourAndMinute])
                    //challenge: add a place where the user can add alergies
                    TextField("Allergy notes",text: $allergyNotes)
                    // add a button to confirm the reservation
                    Button("Confirm reservation"){
                        if !userName.isEmpty {
                            showSummary=true
                        }
                    }
                    .disabled(userName.isEmpty)
                    .navigationDestination(isPresented: $showSummary){
                        ReservationSummaryView(
                            name: userName,
                            date: reservationDate,
                            guests: guestCount,
                            allergyNotes: allergyNotes
                        )
                    }
                    
                    
                }
                //Text("test \(guestCount)")
                
            }
        }
        .navigationTitle("Book a table")
       
//        Text(userName)
    }
}

#Preview {
    ReservationForm()
}
