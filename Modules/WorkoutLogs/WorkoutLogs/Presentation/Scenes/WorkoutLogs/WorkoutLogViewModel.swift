//
//  WorkoutLogViewModel.swift
//  WorkoutLogs
//
//  Created by Marek Loose on 20/11/2022.
//

import Foundation
import Domain

public protocol WorkoutLogViewModelProtocol {
    
    var goalDurationLabel: String { get }
    var actualDurationLabel: String { get }
    var dateLabel: String { get }
    
}

public final class WorkoutLogViewModel {
    
    private let workoutLog: WorkoutLog
    
    public init(with workoutLog: WorkoutLog) {
        self.workoutLog = workoutLog
    }
}

extension WorkoutLogViewModel: WorkoutLogViewModelProtocol {
    
    public var goalDurationLabel: String {
        String(format: NSLocalizedString("workout_logs.log.goal_duration", comment: ""), String(workoutLog.goalDuration))
    }
    
    public var actualDurationLabel: String {
        String(format: NSLocalizedString("workout_logs.log.actual_duration", comment: ""), String(workoutLog.actualDuration))
    }
    
    public var dateLabel: String {
        let date = Date(timeIntervalSince1970: TimeInterval(workoutLog.timestamp))
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        return String(format: NSLocalizedString("workout_logs.log.date", comment: ""), dateFormatter.string(from: date))
    }
    
}
