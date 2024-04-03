//
//  HelpManager.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/4.
//

import Foundation
import MyPackage

class HelpManager {
    
    static let shared = HelpManager()
    
    let network = NetworkManager.shared
    
    func info(){
        print("this is HelpManager")
    }
    
}
