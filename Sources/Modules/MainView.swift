//
//  MainView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/10.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Sent", systemImage: "house")
                }
            SegmentedView()
                .tabItem {
                    Label("Received", systemImage: "command")
                }
            RefreshView()
                .badge(2)
                .tabItem {
                    Label("Sent", systemImage: "message.badge")
                }
            SecondView()
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
