//
//  WorkoutLogsRouter.swift
//  WorkoutLogs
//
//  Created by Marek Loose on 27/11/2022.
//

import SwiftUI
import Presentation

public class WorkoutLogsRouter: RouterProtocol {
    
    public weak var delegate: WorkoutLogsViewControllerDelegate?
    
    var workoutLogsView = WorkoutLogsView()
                
    public init() {}
    
    public func start() -> AnyView {
        AnyView(workoutLogsView)
    }
    
    public func configure() {
        workoutLogsView = WorkoutLogsView(delegate: delegate)
    }
    
}
