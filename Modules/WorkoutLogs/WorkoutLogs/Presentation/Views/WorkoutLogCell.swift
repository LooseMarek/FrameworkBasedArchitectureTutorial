//
//  WorkoutLogCell.swift
//  WorkoutLogs
//
//  Created by Marek Loose on 20/11/2022.
//

import UIKit

class WorkoutLogCell: UITableViewCell {
    
    let dateLabel = UILabel()
    let goalDurationLabel = UILabel()
    let actualDurationLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupLayout()
        setStyle()
    }
    
    required init?(coder: NSCoder) {
        nil
    }
    
    private func setupLayout() {
        let stack = UIStackView(arrangedSubviews: [dateLabel, goalDurationLabel, actualDurationLabel])
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.alignment = .leading
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(stack)
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            stack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8)
        ])
    }
    
    func setStyle() {
        backgroundColor = .clear
    }
    
}

