//
//  ButtonView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/2/26.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var buttonTapCount = 0
    
    var body: some View {
        Button(action: {
            self.buttonTapCount += 1
            print(self.buttonTapCount)
        }) {
            Text("Tap Me!")
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ButtonView()
}
