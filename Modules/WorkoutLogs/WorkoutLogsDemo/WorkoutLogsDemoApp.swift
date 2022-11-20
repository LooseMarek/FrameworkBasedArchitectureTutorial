//
//  WorkoutLogsDemoApp.swift
//  WorkoutLogsDemo
//
//  Created by Marek Loose on 20/11/2022.
//

import SwiftUI
import WorkoutLogs

@main
struct WorkoutLogsDemoApp: App {
    var body: some Scene {
        WindowGroup {
            WorkoutLogsView()
        }
    }
}

struct WorkoutLogsDemoApp_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutLogsView()
    }
}

