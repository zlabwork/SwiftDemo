//
//  DeviceSupport.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/7.
//

import Foundation
import UIKit
import AppTrackingTransparency
import AdSupport

class DeviceSupport {
    
    func getIDFV() -> String? {
        let device = UIDevice.current
        guard let vendorIdentifier = device.identifierForVendor else {
            return nil
        }
        return vendorIdentifier.uuidString
    }
    
    func getIDFA() -> String? {
        // 检查用户是否已经授权了广告跟踪权限
        guard ATTrackingManager.trackingAuthorizationStatus == .authorized else {
            // 如果未授权广告跟踪，返回 nil
            return nil
        }
        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }
}
