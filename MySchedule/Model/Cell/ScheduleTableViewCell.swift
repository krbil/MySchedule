//
//  ScheduleTableViewCell.swift
//  MySchedule
//
//  Created by Илья Крылов on 25.06.2022.
//

import Foundation
import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    let lessonName: UILabel = {
        let label = UILabel()
        label.text = "Some text"
        label.textColor = .black
        label.font = UIFont(name: "Avenir  Next Demi Bold", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    let teacherName: UILabel = {
        let label = UILabel()
        label.text = "Some name"
        label.textColor = .black
        label.font = UIFont(name: "Avenir  Next Demi", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
//MARK: Fix constrains bug (first way)
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) { [self] in
//            setConstraints()
//        }
    }
//MARK: Fix constrains bug (second way)
    override func layoutSubviews() { setConstraints() }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setConstraints() {
        self.addSubview(lessonName)
        NSLayoutConstraint.activate([
            lessonName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            lessonName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonName.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10),
            lessonName.heightAnchor.constraint(equalToConstant: 20)
        
        ])
        
        self.addSubview(teacherName)
        NSLayoutConstraint.activate([
            teacherName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            teacherName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            teacherName.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10),
            teacherName.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }
}
