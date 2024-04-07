//
//  App.swift
//  SwiftDemo
//
//  Created by Joe on 2024/3/31.
//

import Foundation

struct Config {
    
    static let name                 = "测试DemoApp"
    static let website              = "https://zlab.dev"
    static let copyright            = "上海浅灰科技有限公司"
    static let appId: UInt32        = 10000
    static let channelId: UInt32    = 10000
    static let appMock              = true
    static let appVersion: String   = "0.1"
    
    struct Network {
        static let apiHost          = "https://httpbin.org"
        static let apiKey           = "your_api_key"
        static let webHost          = "http://127.0.0.1:8080/h5"
    }
    
    struct Tcp {
        static let sdkHost: String      = "127.0.0.1"
        static let sdkPort: UInt16      = 6280
    }
    
    static let shared = Config()
    
    let theme :Theme
    
    private init() {
        self.theme = Theme()
    }
    
}
