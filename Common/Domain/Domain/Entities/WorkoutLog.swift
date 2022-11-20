//
//  WorkoutLog.swift
//  Domain
//
//  Created by Marek Loose on 20/11/2022.
//

import Foundation

struct WorkoutLog: Decodable {
    
    var goalDuration: Int
    var actualDuration: Int
    var timestamp: Int
    
}
