//
//  MenuItemView.swift
//  LemonRestaurant
//
//  Created by Samantha Jimenez on 12/07/25.
//

import SwiftUI

struct MenuItemView: View {
    var item:MenuItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                Text("$ \(item.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
            }
            Spacer()
            if item.price > 10 {
                
                PremiumBadge()
                
            }
        }
    }
}
//
//#Preview {
//    MenuItemView()
//}
