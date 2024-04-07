//
//  FileSupport.swift
//  SwiftDemo
//
//  Created by Joe on 2024/4/7.
//

import Foundation

class FileSupport {
    func readJsonFile(filename: String) -> Data {
        guard let path = Bundle.main.path(forResource: filename, ofType: "json") else { return Data() }
        do{
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            return data
        } catch{
            return Data()
        }
    }
    
    func loadJson<T: Decodable>(_ filename: String) -> T {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
