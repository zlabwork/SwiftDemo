//
//  ContentView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {

            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                NavigationLink(destination: SecondView()) {
                    Text("切换到第二个视图")
                }
            }
            .navigationBarTitle("主视图")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
