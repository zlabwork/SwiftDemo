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
    static let apiHost              = "https://httpbin.org"
    static let apiKey               = "your_api_key"
    static let appMock              = true
    
    static let shared = Config()
    
    let theme :Theme
    
    private init() {
        self.theme = Theme()
    }
    
}
