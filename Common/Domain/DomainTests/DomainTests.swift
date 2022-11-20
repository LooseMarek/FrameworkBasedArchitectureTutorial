//
//  DomainTests.swift
//  DomainTests
//
//  Created by Marek Loose on 12/11/2022.
//

import XCTest
@testable import Domain
import Infrastructure

final class DomainTests: XCTestCase {

    func testInfrastructureIntegration() throws {
        // Given
        let workoutLogLocalRepository: WorkoutLogLocalRepositoryProtocol = WorkoutLogLocalRepository(jsonService: JsonService())
        
        // When
        let result = workoutLogLocalRepository.getAll()
        
        // Then
        XCTAssertEqual(result.count, 5)
    }

}
