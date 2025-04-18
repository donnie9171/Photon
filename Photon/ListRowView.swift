//
//  ListRowView.swift
//  Photon
//
//  Created by kang enoch on 2025/4/18.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    let id: Int
    
    var body: some View {
        HStack{
            VStack (alignment: .leading){
                HStack{
                    Image(systemName: "sparkle")
                        .symbolEffect(.pulse, isActive: true)
                        .foregroundStyle(Color("AccentColor"))
                    Text(title).font(.headline)
                }
                HStack{
                    Text("11:08 PM").font(.subheadline)
                    Spacer()
                    Text("x1").font(.subheadline)
                }
            }
        }.padding()
        Divider()
    }
}

#Preview {
    ListRowView(title: "Pushups", id: 0)
}
