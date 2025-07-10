//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 09/07/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage = false
    // create a dictionary dish:price (6 items)
    let menuItems = [
        "Pizza": 9.99,
        "Pasta": 10.50,
        "Salad": 6.00,
        "Soup":4.75,
        "Steak":14.99,
    ]
    
    //let sortedMenu = menuItems.sorted(by: {$0.key > $1.key})
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            VStack(spacing: 20){
                Toggle("Show an special text",isOn: $showMessage)
                    .padding()
                if showMessage {
                    Text("You unlocked a surprise!")
                        .font(.title3)
                        .foregroundColor(.green)
                        
                }
            }
                
            List{
                ForEach(menuItems.sorted(by: {$0.key > $1.key}), id: \.key){
                    (name,price) in
                    HStack{
                        VStack(alignment: .leading){
                            Text(name)
                                .font(.headline)
                            Text("$ \(price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        if price > 10 {
                            HStack{
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text("Premium")
                                    .font(.caption)
                            }
                            .font(.caption)
                            .foregroundColor(.orange)
                            .padding(6)
                            .background(Color.orange.opacity(0.1))
                            .cornerRadius(6)
                            
                            
                        }
                    }
                    .padding(.vertical)
                    
                }
            }
                
        }
    }
}

#Preview {
    MenuView()
}
