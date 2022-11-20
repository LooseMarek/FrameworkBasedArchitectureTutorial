//
//  WorkoutLogsView.swift
//  WorkoutLogsDemo
//
//  Created by Marek Loose on 20/11/2022.
//

import SwiftUI
import WorkoutLogs

struct ContentView: View {
    var body: some View {
        WorkoutLogsView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WorkoutLogsView: UIViewControllerRepresentable {    
    
    typealias UIViewControllerType = WorkoutLogsViewController
    
    func makeUIViewController(context: Context) -> WorkoutLogsViewController {
        return WorkoutLogsViewController(with: WorkoutLogsViewModel())
    }
        
    func updateUIViewController(_ uiViewController: WorkoutLogsViewController, context: Context) {}
    
}
