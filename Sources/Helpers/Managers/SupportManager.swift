//
//  SupportManager.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/7.
//

import Foundation

class SupportManager {
    static let shared = SupportManager()
    
    let idUtils = IdSupport()
    let file = FileSupport()
    let device = DeviceSupport()
}
