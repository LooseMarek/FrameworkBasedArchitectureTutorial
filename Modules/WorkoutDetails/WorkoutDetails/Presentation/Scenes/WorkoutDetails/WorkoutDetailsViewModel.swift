//
//  WorkoutDetailsViewModel.swift
//  WorkoutDetails
//
//  Created by Marek Loose on 26/11/2022.
//

import SwiftUI

public class WorkoutDetailsViewModel: ObservableObject {
    
    @Published var dateLabel: String = ""
    @Published var progress: Double = 0
    @Published var progressLabel: String = ""
    
}
