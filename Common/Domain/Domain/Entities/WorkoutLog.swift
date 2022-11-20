//
//  WorkoutLog.swift
//  Domain
//
//  Created by Marek Loose on 20/11/2022.
//

import Foundation

public struct WorkoutLog: Decodable {
    
    public var goalDuration: Int
    public var actualDuration: Int
    public var timestamp: Int
    
}
