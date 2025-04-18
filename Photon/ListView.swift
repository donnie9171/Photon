//
//  ListView.swift
//  Photon
//
//  Created by kang enoch on 2025/4/18.
//

import SwiftUI

struct ListView: View {
    
    @State private var scrollOffset: CGFloat = 0
    
    var deltaScroll: CGFloat = 0
    
    @State var items: [String] = [
        "First title",
        "First title",
        "First title",
    ]
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(items.indices, id: \.self) { index in
                    ListRowView(title: items[index], id: index)
                        .background(
                            // Apply GeometryReader only to the first item
                            index == 0 ? GeometryReader { geometry in
                                Color.clear
                                    .preference(key: ScrollViewOffsetKey.self, value: geometry.frame(in: .named("scroll")).origin.y)
                            } : nil
                        )
                        .onPreferenceChange(ScrollViewOffsetKey.self) { value in
                            if(index == 0){
                                scrollOffset = value
                                print("Current scroll position: \(scrollOffset)")
                            }
                        }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Current scroll position: \(scrollOffset)")
            .navigationBarTitleDisplayMode(.inline)
        }
        .coordinateSpace(name: "scroll")
    }
}

struct ScrollViewOffsetKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}


