//
//  StockCell.swift
//  SmartWallet
//
//  Created by Joao Gripp on 28/04/23.
//

import SwiftUI

struct StockCell: View {
    
    let stock: Stock
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(stock.symbol)
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.bottom, 1)
                Text(stock.name)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                    .lineLimit(1)
            }
            .layoutPriority(1)
            Spacer(minLength: 10)
            Rectangle()
                .fill(stock.graphicColor)
                .frame(width: 100)
            
            Spacer(minLength: 10)
            
            VStack(alignment: .trailing) {
                Text(stock.valueString)
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding(.bottom, 1)
                Text(stock.percentageString)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                    .padding(10)
                    .background(
                        Rectangle()
                            .fill(stock.graphicColor)
                            .cornerRadius(10)
                    )
            }
            .frame(minWidth: 100)
        }
    }
}

struct StockCell_Previews: PreviewProvider {
    static var previews: some View {
        StockCell(stock: stocksSampleData[0])
            .preferredColorScheme(.dark)
    }
}


