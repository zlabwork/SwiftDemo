//
//  IdUtils.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/7.
//


import Foundation

class IdUtils {
    func genUUID() -> String {
        let uuid = UUID()
        return uuid.uuidString
    }
}
