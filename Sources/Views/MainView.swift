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
            SecondView()
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            ContentView()
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
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
