//
//  ReservationSummaryView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 07/07/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    let name: String
    let date: Date
    let guests: Int
    let allergyNotes: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Reservation Summary")
                .font(.title)
            Text("Name: \(name)")
            Text("Date: \(formattedDate(date))")
            Text("Guests: \(guests)")
            Text("Allergy Notes: \(allergyNotes)")
        }
    }
    
    func formattedDate(_ date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: date)
    }
}

//#Preview {
//    ReservationSummaryView()
//}
