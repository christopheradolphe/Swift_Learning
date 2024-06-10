//
//  AddressView.swift
//  CupcakeCorner
//
//  Created by Christopher Adolphe on 2024-06-09.
//

import SwiftUI

struct AddressView: View {
    @Bindable var order: Order
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $order.name)
                    TextField("Street Address", text: $order.streetAddress)
                    TextField("City", text: $order.city)
                    TextField("Zip", text: $order.zip)
                }
                
                Section {
                    NavigationLink("Check Out") {
                        CheckoutView(order: order)
                    }
                    .disabled(order.hasValidAddress == false)
                }
            }
            .navigationTitle("Delivery Details")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    AddressView(order: Order())
}
