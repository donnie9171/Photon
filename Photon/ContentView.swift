//
//  ContentView.swift
//  Photon
//
//  Created by kang enoch on 2025/4/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "sparkle")
                .imageScale(.large)
                .symbolEffect(.pulse, isActive: true)
            Text("Brighter Each Day!")
                .fontWeight(.bold)
        }
        .padding()
        .foregroundColor(.orange)
    }
}

#Preview {
    ContentView()
}
