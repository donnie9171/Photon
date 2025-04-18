//
//  ListView.swift
//  Photon
//
//  Created by kang enoch on 2025/4/18.
//

import SwiftUI

struct ListView: View {
    
    @State private var scroll: CGFloat = 0
    
    @State var items: [String] = [
        "New Spark",
        "First title",
        "Second",
        "third title",
        "fourth",
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self){ item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Today")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}


