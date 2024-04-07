//
//  IdUtils.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/7.
//


import Foundation

class IdSupport {
    func genUUID() -> String {
        let uuid = UUID()
        return uuid.uuidString
    }
}
