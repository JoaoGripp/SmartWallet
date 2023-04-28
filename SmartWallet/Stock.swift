//
//  Stock.swift
//  SmartWallet
//
//  Created by Joao Gripp on 28/04/23.
//

import Foundation
import SwiftUI

struct Stock: Identifiable {
    
    let symbol: String
    let name: String
    var value: Double
    var percentage: Double
    
    var id: String {
        return symbol
    }
    
    var valueString: String {
        return String(format: "%.2f", value)
    }
    var percentageString: String {
        return String(format: "%.2f", percentage) + "%"
    }
    var graphicColor: Color {
        if percentage < 0 {
            return .red
        } else {
            return .green
        }
    }
    
}

let stocksSampleData: [Stock] = [
    .init(symbol: "S&P 500", name: "Standard & Poor's 500", value: 4142.93, percentage: 0.36),
    .init(symbol: "MSF", name: "Microsoft", value: 160.45, percentage: 0.50),
    .init(symbol: "IBM", name: "IBM", value: 200.45, percentage: -0.36)
]


