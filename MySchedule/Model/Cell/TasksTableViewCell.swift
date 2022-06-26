//
//  TasksTableViewCell.swift
//  MySchedule
//
//  Created by Илья Крылов on 26.06.2022.
//

import Foundation
import UIKit

class TasksTableViewCell: UITableViewCell {
    let tasksName = UILabel(text: "Programming", font: .avenirNextDemiBold20(), textAlignment: .left)
    let taskDescription = UILabel(text: "Description", font: .avenirNext14(), textAlignment: .left)
    let readyButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "chevron.down.circle"), for: .normal)
        button.tintColor = .black
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
 
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//MARK: Fix constrains bug (first way)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [self] in
            setConstraints()
        }
        self.selectionStyle = .none
    }
//MARK: Fix constrains bug (second way)
//    override func layoutSubviews() { setConstraints() }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setConstraints() {
        self.addSubview(readyButton)
        NSLayoutConstraint.activate([
            readyButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 0),
            readyButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            readyButton.heightAnchor.constraint(equalToConstant: 40),
            readyButton.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        self.addSubview(tasksName)
        NSLayoutConstraint.activate([
            tasksName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            tasksName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            tasksName.trailingAnchor.constraint(equalTo: readyButton.leadingAnchor, constant: -5),
            tasksName.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(tasksName)
        NSLayoutConstraint.activate([
            tasksName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            tasksName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            tasksName.trailingAnchor.constraint(equalTo: readyButton.leadingAnchor, constant: -5),
            tasksName.heightAnchor.constraint(equalToConstant: 25)
        ])

        
        
    }
}
