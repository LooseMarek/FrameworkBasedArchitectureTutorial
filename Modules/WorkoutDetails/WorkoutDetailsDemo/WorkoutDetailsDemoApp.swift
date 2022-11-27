//
//  WorkoutDetailsDemoApp.swift
//  WorkoutDetailsDemo
//
//  Created by Marek Loose on 20/11/2022.
//

import SwiftUI
import WorkoutDetails
import Domain

@main
struct WorkoutDetailsDemoApp: App {
    
    var workoutDetailsRouter = WorkoutDetailsRouter()
    
    init() {
        let workoutLog = WorkoutLog(goalDuration: 100, actualDuration: 43, timestamp: 1668779145)
        workoutDetailsRouter.configure(workoutLog: workoutLog)
    }
    
    var body: some Scene {
        WindowGroup {
            workoutDetailsRouter.start()
        }
    }
    
}

struct WorkoutDetailsDemoApp_Previews: PreviewProvider {
    
    static var previews: some View {
        WorkoutDetailsView().configureView()
    }
    
}
