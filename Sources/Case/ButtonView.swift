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
        VStack {
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
            
            Button(action: {
                Help.network.networkApiRequest(uri: "/get") { httpStatusCode, response in
                    debugPrint(httpStatusCode, response)
                }
            }) {
                Text("网络请求测试")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ButtonView()
}
