//
//  LoginView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 07/07/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool // mandatory declare type
    @Binding var userName: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                
                TextField("Enter your name: ", text:$userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Log In"){
                    if userName == "Sam" {
                        isLoggedIn = true
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Login")
    }
}

//#Preview {
//    LoginView()
//}
