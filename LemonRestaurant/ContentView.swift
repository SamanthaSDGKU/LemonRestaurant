//
//  ContentView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 30/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello!")
                    .padding()
                NavigationLink(destination: AboutView()) {
                    Text("About")
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
