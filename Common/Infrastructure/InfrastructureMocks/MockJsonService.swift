//
//  MockJsonService.swift
//  InfrastructureMocks
//
//  Created by Marek Loose on 27/11/2022.
//

import Foundation
@testable import Infrastructure

public class MockJsonService: JsonServiceProtocol {
    
    public var mockData: Data? = nil
    
    public func loadData(from fileName: String, in bundle: Bundle) -> Data? {
        mockData
    }

}
