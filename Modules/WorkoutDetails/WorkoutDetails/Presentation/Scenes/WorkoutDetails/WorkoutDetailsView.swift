//
//  WorkoutDetailsView.swift
//  WorkoutDetails
//
//  Created by Marek Loose on 26/11/2022.
//

import SwiftUI
import Domain

public struct WorkoutDetailsView: View {
    
    public var interactor: WorkoutDetailsInteractorProtocol?
    @ObservedObject private var viewModel = WorkoutDetailsViewModel()
    
    public init() {}
    
    public var body: some View {
        Text(viewModel.dateLabel)
            .font(.largeTitle)
            .bold()
        CircularProgressView(progress: viewModel.progress,
                             label: viewModel.progressLabel)
            .frame(width: 250, height: 250)
            .padding(50)
            .onAppear {
                interactor?.loadData()
            }
    }
    
    public func display(viewModel: WorkoutDetails.LoadData.ViewModel) {
        self.viewModel.dateLabel = viewModel.dateLabel
        self.viewModel.progress = viewModel.progress
        self.viewModel.progressLabel = viewModel.progressLabel        
    }
    
}

public extension WorkoutDetailsView {
    
    func configureView() -> Self {
        var view = self
        var interactor: WorkoutDetailsInteractorProtocol = WorkoutDetailsInteractor()
        var presenter: WorkoutDetailsPresenterProtocol = WorkoutDetailsPresenter()
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view

        return view
    }
    
    func configure(workoutLog: WorkoutLog) -> Self {
        var view = self
        view.interactor?.workoutLog = workoutLog
        return view
    }
    
}

struct WorkoutDetailsView_Previews: PreviewProvider {
    
    static var previews: some View {
        WorkoutDetailsView()
    }
    
}
