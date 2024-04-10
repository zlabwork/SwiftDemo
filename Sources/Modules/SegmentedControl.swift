//
//  SegmentedControl.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/10.
//

import SwiftUI

struct SegmentedControl: View {
    @State private var selectedTab = 0
        let tabs = ["Tab 1", "Tab 2", "Tab 3"]

        var body: some View {
            VStack {
                Picker(selection: $selectedTab, label: Text("Tabs")) {
                    ForEach(0..<tabs.count) { index in
                        Text(self.tabs[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())

                TabView(selection: $selectedTab) {
                    ForEach(0..<tabs.count) { index in
                        Text("Content for \(self.tabs[index])").tag(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            .padding()
        }
}

#Preview {
    SegmentedControl()
}
