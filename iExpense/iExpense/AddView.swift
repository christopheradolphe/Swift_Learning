//
//  AddView.swift
//  iExpense
//
//  Created by Christopher Adolphe on 2024-04-30.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    var expenses: Expenses
    
    let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(types, id:\.self) {
                        Text($0)
                    }
                }
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .onSubmit {
                expenses.append(ExpenseItem(name: name, type: type, amount: amount))
            }
        }
    }
}

#Preview {
    AddView(expenses: Expenses())
}
