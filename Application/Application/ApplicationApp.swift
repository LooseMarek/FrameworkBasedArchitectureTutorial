//
//  ApplicationApp.swift
//  Application
//
//  Created by Marek Loose on 11/11/2022.
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


