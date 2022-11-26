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
    
    var workoutLog = WorkoutLog(goalDuration: 100, actualDuration: 43, timestamp: 1668779145)
    
    var body: some Scene {
        WindowGroup {
            WorkoutDetailsView().configureView(with: workoutLog)
        }
    }
    
}

struct WorkoutDetailsDemoApp_Previews: PreviewProvider {
    
    static var previews: some View {
        WorkoutDetailsView().configureView()
    }
    
}
