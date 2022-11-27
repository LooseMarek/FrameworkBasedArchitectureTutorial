//
//  ApplicationRouter.swift
//  Application
//
//  Created by Marek Loose on 27/11/2022.
//

import SwiftUI
import Domain
import Presentation
import WorkoutLogs
import WorkoutDetails

public class ApplicationRouter: RouterProtocol {
    
    var workoutLogsRouter = WorkoutLogsRouter()
    var workoutDetailsRouter = WorkoutDetailsRouter()
    
    public init() {
        workoutLogsRouter.delegate = self
    }
    
    public func start() -> AnyView {
        workoutLogsRouter.configure()
        return workoutLogsRouter.start()
    }
    
}

extension ApplicationRouter: WorkoutLogsViewControllerDelegate {
    
    public func onShowDetails(for workoutLog: WorkoutLog, navigationController: UINavigationController?) {
        workoutDetailsRouter.configure(workoutLog: workoutLog)
        let hostVC = UIHostingController(rootView: workoutDetailsRouter.start())
        navigationController?.pushViewController(hostVC, animated: true)
    }
    
}
