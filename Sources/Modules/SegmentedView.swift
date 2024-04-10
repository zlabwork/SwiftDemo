//
//  SegmentedView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/10.
//

import SwiftUI

struct SegmentedView: View {
    @State private var selectedTab = 0
    
    var body: some View {
            VStack {
                Picker(selection: $selectedTab, label: Text("Tabs")) {
                    Text("Tab 1").tag(0)
                    Text("Tab 2").tag(1)
                    Text("Tab 3").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())

                TabView(selection: $selectedTab) {
                    Text("Content for Tab 1").tag(0)
                    Text("Content for Tab 2").tag(1)
                    Text("Content for Tab 3").tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            .padding()
        }
}

#Preview {
    SegmentedView()
}
