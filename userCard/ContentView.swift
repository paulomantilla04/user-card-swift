//
//  ContentView.swift
//  userCard
//
//  Created by Paulo Mantilla on 20/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        UserCardComponentA(player: MockData.cristiano)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "F5F5F5").ignoresSafeArea())
    }
}



#Preview {
    ContentView()
}
