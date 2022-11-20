//
//  WorkoutLogsViewModel.swift
//  WorkoutLogs
//
//  Created by Marek Loose on 20/11/2022.
//

import Foundation
import Domain

public protocol WorkoutLogsViewModelProtocol {
    
    var titleLabel: String { get }
    
    var workoutLogViewModels: [WorkoutLogViewModelProtocol] { get }
    
}

public final class WorkoutLogsViewModel {
    
    private let workoutLogLocalRepository: WorkoutLogLocalRepositoryProtocol
    
    public init(workoutLogLocalRepository: WorkoutLogLocalRepositoryProtocol = WorkoutLogLocalRepository()) {
        self.workoutLogLocalRepository = workoutLogLocalRepository
    }
}

extension WorkoutLogsViewModel: WorkoutLogsViewModelProtocol {
    
    public var titleLabel: String {
        NSLocalizedString("workout_logs.title", comment: "")
    }
    
    public var workoutLogViewModels: [WorkoutLogViewModelProtocol] {
        workoutLogLocalRepository.getAll().map { WorkoutLogViewModel(with: $0) }
    }
    
}
