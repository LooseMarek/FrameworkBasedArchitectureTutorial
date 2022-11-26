//
//  WorkoutDetailsInteractor.swift
//  WorkoutDetails
//
//  Created by Marek Loose on 26/11/2022.
//

import Domain

public protocol WorkoutDetailsInteractorProtocol {
    
    var workoutLog: WorkoutLog? { get set }
    var presenter: WorkoutDetailsPresenterProtocol? { get set }
    
    func loadData()

}

public final class WorkoutDetailsInteractor: WorkoutDetailsInteractorProtocol {
    
    public var workoutLog: WorkoutLog?
    public var presenter: WorkoutDetailsPresenterProtocol?
    
    public func loadData() {
        guard let workoutLog = workoutLog else { return }
        let response = WorkoutDetails.LoadData.Response(workoutLog: workoutLog)
        presenter?.presentData(response: response)
    }
    
}
