//
//  OrderView.swift
//  Appetizers
//
//  Created by Vikram Ho on 1/12/21.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack{
                    List{
                        ForEach(order.items) { appetitzer in
                            AppetizerListCell(appetizer: appetitzer)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button{
                        print("Order placed")
                    } label: {
                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .padding(.bottom, 25)
                }
                if order.items.isEmpty{
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. Please add in your appetizer!")
                }
            }
            .navigationTitle("Orders")
            
        }
    }
    
   
       
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
