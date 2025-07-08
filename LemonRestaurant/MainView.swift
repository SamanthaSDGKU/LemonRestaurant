//
//  MainView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 07/07/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = false
    @State private var userName = ""
    
    var body: some View {
        NavigationView {
            if isLoggedIn == true {
                VStack {
                    Text("Welcome, \(userName)")
                        .font(.title)
                    
                    NavigationLink("Make a Reservation", destination: ReservationForm())
                    
                    NavigationLink("About Us", destination: AboutView())
                    
                    Button("Logout"){
                        isLoggedIn = false
                        userName = ""
                    }
                }
                
            } else {
                LoginView(isLoggedIn: $isLoggedIn, userName: $userName)
            }
            
        }
        .navigationTitle("Login")
        
    }
}

#Preview {
    MainView()
}
