//
//  MyIcons.swift
//  WorkGround
//
//  Created by Joe Chu on 2024/4/9.
//  Copyright © 2020 HUI TECH. All rights reserved.
//

import Foundation
import SwiftUI

// 支持 ttf woff
enum ZlabIconType {
    case themify
    case icofont
    case iconsmind
    case feather
    case material
    case dripicons
    case simple
    case flaticon
    case lineawesome
}

class MyIcons {
    static let shared = MyIcons()
    private init() {}
    
    private func getFontType(name: String) -> ZlabIconType {
        let fix = String(name.prefix(2))
        switch fix {
        case "im":
            return .iconsmind
            
        case "if":
            return .icofont
            
        case "ti":
            return .themify
            
        case "fe":
            return .feather
            
        case "fi":
            return .flaticon
            
        case "di":
            return .dripicons
            
        case "la":
            return .lineawesome
            
        case "md":
            return .material
            
        case "si":
            return .simple
            
        default:
            return .simple
        }
    }
    
    private func getFontName(name: String) -> String {
        let type = self.getFontType(name: name)
        var font = ""
        switch type {
        case .themify:
            font = "themify"
        case .icofont:
            font = "icofont"
        case .iconsmind:
            font = "iconsmind"
        case .feather:
            font = "feather"
        case .material:
            font = "Material Design Icons"
        case .dripicons:
            font = "dripicons-v2"
        case .simple:
            font = "Simple-Line-Icons"
        case .flaticon:
            font = "Flaticon"
        case .lineawesome:
            font = "LineAwesome"
        }
        return font
    }
    
    private func getFont(name: String, size: CGFloat) -> Font {
        let name = self.getFontName(name: name)
        return  Font.custom(name, size: size)
    }
    
    private func code(name: String) -> String {
        let type = self.getFontType(name: name)
        switch type {
        case .themify:
            return iconMapThemify[name] ?? ""
        case .icofont:
            return iconMapIcofont[name] ?? ""
        case .iconsmind:
            return iconMapIconsmind[name] ?? ""
        case .feather:
            return iconMapFeather[name] ?? ""
        case .material:
            return iconMapMdi[name] ?? ""
        case .dripicons:
            return iconMapDripicons[name] ?? ""
        case .simple:
            return iconMapSimple[name] ?? ""
        case .flaticon:
            return iconMapFlaticon[name] ?? ""
        case .lineawesome:
            return iconMapLineawesome[name] ?? ""
        }
    }
    
    public func attributedString(name: String, size: CGFloat = 16, color: UIColor = .darkGray) -> NSAttributedString {
        return NSAttributedString(string: self.code(name: name), attributes: [
            NSAttributedString.Key.font: self.getFont(name: name, size: size),
            NSAttributedString.Key.foregroundColor: color,
        ])
    }
    
    public func text(name: String, size: CGFloat) -> Text {
        let fontName = self.getFontName(name: name)
        let text = self.code(name: name)
        return Text(text).font(.custom(fontName, size: size))
    }
}
