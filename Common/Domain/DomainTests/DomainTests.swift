//
//  DomainTests.swift
//  DomainTests
//
//  Created by Marek Loose on 12/11/2022.
//

import XCTest
import Infrastructure
@testable import InfrastructureMocks
@testable import Domain

final class DomainTests: XCTestCase {

    func testInfrastructureIntegration() throws {
        // Given
        let workoutLogLocalRepository: WorkoutLogLocalRepositoryProtocol = WorkoutLogLocalRepository(jsonService: JsonService())
        
        // When
        let result = workoutLogLocalRepository.getAll()
        
        // Then
        XCTAssertEqual(result.count, 5)
    }
    
    func testMockFromStaticLibrary() throws {
        // Given
        let mockJsonService = MockJsonService()
        mockJsonService.mockData = nil
        let workoutLogLocalRepository: WorkoutLogLocalRepositoryProtocol = WorkoutLogLocalRepository(jsonService: mockJsonService)
        
        // When
        let result = workoutLogLocalRepository.getAll()
        
        // Then
        XCTAssertEqual(result.count, 0)
    }


}
