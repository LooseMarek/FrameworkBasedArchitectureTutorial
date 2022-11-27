//
//  WorkoutDetailsRouter.swift
//  WorkoutDetails
//
//  Created by Marek Loose on 27/11/2022.
//

import SwiftUI
import Domain
import Presentation

public class WorkoutDetailsRouter: RouterProtocol {
    
    var workoutDetailsView = WorkoutDetailsView().configureView()
    
    public init() {}
    
    public func start() -> AnyView {
        AnyView(workoutDetailsView)
    }
    
    public func configure(workoutLog: WorkoutLog) {
        workoutDetailsView = workoutDetailsView.configure(workoutLog: workoutLog)
    }
    
}
