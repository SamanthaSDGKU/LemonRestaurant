//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 09/07/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage = false
    // use the struct
    let menuItems = [
        MenuItem(name:"Piza",description:"Cheesy and hot",price:9.0),
        MenuItem(name:"Steak",description: "Grilled",price: 15.0),
        MenuItem(name:"Pasta",description: "Spaghetti",price: 8.0),
        MenuItem(name:"Salad",description: "Fresh greens",price: 7.0),
        MenuItem(name:"Sushi",description: "Rolls and rice",price: 12.0),
        MenuItem(name:"Affogato",description: "Beef or fish",price: 10.0),
    ]
    
    // computed variables/properties
    var sortedMenuItems: [MenuItem] {
        menuItems.sorted { $0.price < $1.price }
    }
    
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
            
            
            List(sortedMenuItems){ item in
                MenuItemView(item:item)
            }
            
            
            
        }
    }
}

#Preview {
    MenuView()
}
