//
//  WorkoutLogLocalRepository.swift
//  Domain
//
//  Created by Marek Loose on 20/11/2022.
//

import Foundation
import Infrastructure

public protocol WorkoutLogLocalRepositoryProtocol {
    
    func getAll() -> [WorkoutLog]
    
}

public final class WorkoutLogLocalRepository {
    
    let jsonService: JsonServiceProtocol
    
    public init(jsonService: JsonServiceProtocol = JsonService()) {
        self.jsonService = jsonService
    }
    
}

extension WorkoutLogLocalRepository: WorkoutLogLocalRepositoryProtocol {
    
    public func getAll() -> [WorkoutLog] {
        guard let data = jsonService.loadData(from: "MockWorkoutLogs", in: Bundle(for: type(of: self))) else { return [] }
        
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let jsonData = try decoder.decode([WorkoutLog].self, from: data)
            return jsonData
        } catch {
            print("error: \(error)")
        }
        
        return []
    }
    
}
