//
//  FeedbackGeneratorView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/5/23.
//

import SwiftUI

struct FeedbackGeneratorView: View {
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                // 触发中等强度震动反馈
                let generator = UIImpactFeedbackGenerator(style: .medium)
                generator.impactOccurred()
            }) {
                Text("Medium Impact")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Button(action: {
                // 触发通知震动反馈
                let generator = UINotificationFeedbackGenerator()
                generator.notificationOccurred(.success)
            }) {
                Text("Success Notification")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Button(action: {
                // 触发选择震动反馈
                let generator = UISelectionFeedbackGenerator()
                generator.selectionChanged()
            }) {
                Text("Selection Feedback")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        }
}

#Preview {
    FeedbackGeneratorView()
}
