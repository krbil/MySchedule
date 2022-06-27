//
//  ScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Илья Крылов on 25.06.2022.
//

import Foundation
import UIKit

class ScheduleTableViewCell: UITableViewCell {
    let lessonName = UILabel(text: "Lesson name", font: .avenirNextDemiBold20(), textAlignment: .left)
    let teacherName = UILabel(text: "Teacher name", font: .avenirNext20(), textAlignment: .left)
    let lessonTime = UILabel(text: "8:00", font: .avenirNextDemiBold20(), textAlignment: .left)
    let typeLabel = UILabel(text: "Type:", font: .avenirNext14(), textAlignment: .right)
    let lessonType = UILabel(text: "Lecture", font: .avenirNextDemiBold14(), textAlignment: .left)
    let buildingLabel = UILabel(text: "Building", font: .avenirNext14(), textAlignment: .right)
    let lessonBuilding = UILabel(text: "1", font: .avenirNextDemiBold14(), textAlignment: .left)
    let audienceRoomLabel = UILabel(text: "Audience:", font: .avenirNext14(), textAlignment: .right)
    let audienceLessonLabel = UILabel(text: "101", font: .avenirNextDemiBold14(), textAlignment: .left )

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//MARK: Fix constrains bug (first way)
        setConstraints()
        self.selectionStyle = .none
        
    }
//MARK: Fix constrains bug (second way)
//    override func layoutSubviews() { setConstraints() }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setConstraints() {
        
        let topStackView = UIStackView(arrangedSubViews: [lessonName, teacherName], axis: .horizontal, spacing: 10, distribution: .fillEqually)
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
            
        
        ])
        
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 50),
            lessonTime.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        let bottomStackView = UIStackView(arrangedSubViews: [typeLabel, lessonType, buildingLabel, lessonBuilding, audienceRoomLabel, audienceLessonLabel], axis: .horizontal, spacing: 10, distribution: .fillProportionally)
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            bottomStackView.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 5),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
}
