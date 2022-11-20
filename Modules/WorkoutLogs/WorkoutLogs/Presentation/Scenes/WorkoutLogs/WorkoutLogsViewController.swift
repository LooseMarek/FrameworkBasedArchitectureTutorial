//
//  WorkoutLogsViewController.swift
//  WorkoutLogs
//
//  Created by Marek Loose on 20/11/2022.
//

import UIKit
import SwiftUI

public struct WorkoutLogsView: UIViewControllerRepresentable {
    
    public typealias UIViewControllerType = WorkoutLogsViewController
    
    public init() {}

    public func makeUIViewController(context: Context) -> WorkoutLogsViewController {
        WorkoutLogsViewController(with: WorkoutLogsViewModel())
    }

    public func updateUIViewController(_ uiViewController: WorkoutLogsViewController, context: Context) {}

}

public final class WorkoutLogsViewController: UIViewController {
    
    private(set) var headerLabel = UILabel()
    private(set) var tableView = UITableView()
    
    private(set) var workoutLogViewModels = [WorkoutLogViewModelProtocol]()
    
    private let viewModel: WorkoutLogsViewModelProtocol
    
    public init(with viewModel: WorkoutLogsViewModelProtocol) {
        self.viewModel = viewModel
        
        tableView.register(WorkoutLogCell.self, forCellReuseIdentifier: "WorkoutLogCell")
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder: NSCoder) {
        nil
    }
    
    // MARK: - Lifecycle
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setDelegates()
        setSubviews()
        setLayout()
        setStyle()
        setData()
        
        tableView.reloadData()
    }
    
    // MARK: - UI Setters
    
    func setDelegates() {
        tableView.dataSource = self
    }
    
    func setSubviews() {
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerLabel)
        view.addSubview(tableView)
    }
    
    func setLayout() {
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16.0),
            headerLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8.0),
            headerLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8.0),
            
            tableView.topAnchor.constraint(equalTo: headerLabel.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setStyle() {
        view.backgroundColor = .clear
        headerLabel.font = .systemFont(ofSize: 20, weight: .bold)
        headerLabel.textAlignment = .center
        tableView.backgroundColor = .clear
    }
    
    func setData() {
        headerLabel.text = viewModel.titleLabel
        workoutLogViewModels = viewModel.workoutLogViewModels
    }
    
}

extension WorkoutLogsViewController: UITableViewDataSource {

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        workoutLogViewModels.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorkoutLogCell", for: indexPath) as! WorkoutLogCell
        
        let viewModel = workoutLogViewModels[indexPath.row]
        
        cell.dateLabel.text = viewModel.dateLabel
        cell.goalDurationLabel.text = viewModel.goalDurationLabel
        cell.actualDurationLabel.text = viewModel.actualDurationLabel
        
        return cell
    }
    
}

