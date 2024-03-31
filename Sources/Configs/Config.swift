//
//  App.swift
//  SwiftDemo
//
//  Created by Joe on 2024/3/31.
//

import Foundation

struct Config {
    
    static let name                 = "测试DemoApp"
    static let githubUrl            = "https://github.com"
    static let copyright            = "上海浅灰科技有限公司"
    
    struct Server {
        let apiUrl: String
        let apiKey: String
    }
    
    static let shared = Config()
    
    let server: Server
    let theme :Theme
    
    private init() {
        self.server = Server(apiUrl: "https://example.com/api", apiKey: "your_api_key")
        self.theme = Theme()
    }
    
}
