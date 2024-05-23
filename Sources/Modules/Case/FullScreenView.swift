//
//  FullScreenView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/5/23.
//

import SwiftUI


struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button("Dismiss Modal") {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct FullScreenView: View {
    @State private var isPresented = false
    var body: some View {
        Color.gray // 将全屏背景色设置为蓝色
            .edgesIgnoringSafeArea(.all) // 忽略安全区域
            .overlay(
                VStack {
                    Text("Your Content Here")
                        .foregroundColor(.white) // 设置文本颜色为白色
                        .font(.largeTitle) // 设置字体大小
                    
                    Button("Present!") {
                        isPresented.toggle()
                    }
                    .fullScreenCover(isPresented: $isPresented, content: FullScreenModalView.init)
                }
            )
    }
}

#Preview {
    FullScreenView()
}
