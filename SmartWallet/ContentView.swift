//
//  ContentView.swift
//  SmartWallet
//
//  Created by Joao Gripp on 28/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(stocksSampleData) { stock in
                    StockCell(stock: stock)
                }
            }
            .listStyle(.plain)
            .navigationTitle(Text("Stocks"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
