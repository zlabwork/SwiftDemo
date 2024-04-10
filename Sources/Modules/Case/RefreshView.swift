//
//  RefreshView.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/10.
//

import SwiftUI

struct RefreshView: View {
    @State private var items: [String] = ["Item 1", "Item 2", "Item 3"]
        @State private var isRefreshing = false

        var body: some View {
            NavigationView {
                List {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                    }
                }
                .navigationTitle("Items")
                .refreshable {
                    // 在下拉刷新时执行的操作
                    await refreshData()
                }
            }
        }

        func refreshData() async {
            // 模拟异步加载新数据
            isRefreshing = true
            
            do {
                try await Task.sleep(nanoseconds: 1_000_000_000) // 模拟加载过程
            } catch {
                print("Error fetching data: \(error)")
            }
            
            items = ["New Item 1", "New Item 2", "New Item 3"] // 更新数据
            isRefreshing = false
        }
}

#Preview {
    RefreshView()
}
