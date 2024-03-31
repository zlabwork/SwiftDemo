//
//  SecondView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/3/31.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text("这是第二个视图")
        }
        .navigationBarTitle("第二个视图")
    }
}

#Preview {
    SecondView()
}
