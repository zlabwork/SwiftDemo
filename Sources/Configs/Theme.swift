//
//  Theme.swift
//  SwiftDemo
//
//  Created by Joe on 2024/3/31.
//

import Foundation

struct Theme {
    
    let title = "主题"
    let size = Size()
    
    struct Size {
        let radius: CGFloat   = 6
        let marginXS: CGFloat = 3
        let marginSM: CGFloat = 6
        let marginMD: CGFloat = 12
        let marginLG: CGFloat = 18
        let marginXL: CGFloat = 24
    }
}
