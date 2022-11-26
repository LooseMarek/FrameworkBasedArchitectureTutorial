//
//  WorkoutDetails.swift
//  WorkoutDetails
//
//  Created by Marek Loose on 26/11/2022.
//

import Foundation
import Domain

public enum WorkoutDetails {
    
    public enum LoadData {
        
        public struct Request {}

        public struct Response {
            
            let workoutLog: WorkoutLog
            
        }

        public struct ViewModel {
            
            var dateLabel: String
            var progress: Double
            var progressLabel: String
            
        }
        
    }
    
}
