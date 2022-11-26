//
//  WorkoutDetailsPresenter.swift
//  WorkoutDetails
//
//  Created by Marek Loose on 26/11/2022.
//

import Foundation

public protocol WorkoutDetailsPresenterProtocol {
    
    var view: WorkoutDetailsView? { get set }
        
    func presentData(response: WorkoutDetails.LoadData.Response)

}

public final class WorkoutDetailsPresenter: WorkoutDetailsPresenterProtocol {
    
    public var view: WorkoutDetailsView?
    
    public func presentData(response: WorkoutDetails.LoadData.Response) {
        let dateLabel = getDateLabel(from: response.workoutLog.timestamp)
        let progress = getProgress(goalDuration: response.workoutLog.goalDuration, actualDuration: response.workoutLog.actualDuration)
        let progressLabel = getProgressLabel(progress: progress)
        let viewModel = WorkoutDetails.LoadData.ViewModel(dateLabel: dateLabel,
                                                          progress: progress,
                                                          progressLabel: progressLabel)
        view?.display(viewModel: viewModel)
    }
    
    private func getDateLabel(from timestamp: Int) -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(timestamp))
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        return dateFormatter.string(from: date)
    }
    
    private func getProgress(goalDuration: Int, actualDuration: Int) -> Double {
        Double(actualDuration) / Double(goalDuration)
    }
    
    private func getProgressLabel(progress: Double) -> String {
        "\(Int(progress * 100))%"
    }
    
}
