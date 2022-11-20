//
//  JsonService.swift
//  Infrastructure
//
//  Created by Marek Loose on 20/11/2022.
//

import Foundation

public protocol JsonServiceProtocol {
    
    func loadData(from fileName: String, in bundle: Bundle) -> Data?
    
}

public final class JsonService {
    
    public init() {}
    
}

extension JsonService: JsonServiceProtocol {
    
    public func loadData(from fileName: String, in bundle: Bundle) -> Data? {
        if let path = bundle.path(forResource: fileName, ofType: "json") {
            do {
                return try String(contentsOfFile: path).data(using: .utf8)
            } catch {
                print("error: \(error)")
            }
        }
        return nil
    }
    
}
