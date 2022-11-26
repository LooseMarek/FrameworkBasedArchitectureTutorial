//
//  CircularProgressView.swift
//  WorkoutDetails
//
//  Created by Marek Loose on 26/11/2022.
//

import SwiftUI

struct CircularProgressView: View {
    
    let progress: Double
    let label: String
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.blue.opacity(0.5),
                    lineWidth: 30
                )
            Circle()
                .trim(from: 0, to: progress)
                .stroke(
                    Color.blue,
                    style: StrokeStyle(
                        lineWidth: 25,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.easeOut(duration: 1), value: progress)
            Text(label)
                .font(.largeTitle)
                .bold()
        }
    }
    
}
