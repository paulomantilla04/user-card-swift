//
//  StatsVisualizer.swift
//  userCard
//
//  Created by Paulo Mantilla on 21/02/26.
//
import SwiftUI

struct StatsVisualizer: View {
    let label: String
    let value: String
    let colorLabel: Color
    
    var body: some View {
        VStack {
            Text(value)
                .font(.title2)
                .foregroundStyle(colorLabel)
                .bold()
            Text(label)
                .font(.system(size: 14))
                .foregroundStyle(colorLabel)
                .tracking(2)
        }
    }
}
