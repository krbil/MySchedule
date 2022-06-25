//
//  SceduleViewController.swift
//  MySchedule
//
//  Created by Илья Крылов on 22.06.2022.
//

import Foundation
import UIKit
import FSCalendar

class SceduleViewController: UIViewController {
    var calendarHieghtConstraint: NSLayoutConstraint!
    private var calendar: FSCalendar = {
        let calendar = FSCalendar()
        calendar.translatesAutoresizingMaskIntoConstraints = false
        return calendar
    }()
    let showHideButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Open Calendar", for: .normal)
        let buttonColor = UIColor(#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255))
        button.setTitleColor(buttonColor, for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir Next Demi Bold", size: 14)
        
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Scedule"
        view.backgroundColor = .white
        setConstraints()
    }

    
}
//MARK: Set Constraints
extension SceduleViewController {
    func setConstraints() {
        
        view.addSubview(calendar)
        calendarHieghtConstraint = NSLayoutConstraint(item: calendar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300)
        calendar.addConstraint(calendarHieghtConstraint)
        
        NSLayoutConstraint.activate([
            calendar.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            calendar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            calendar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1),
            calendar.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        view.addSubview(showHideButton)
        NSLayoutConstraint.activate([
            showHideButton.topAnchor.constraint(equalTo: calendar.bottomAnchor, constant: 0),
            showHideButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            showHideButton.widthAnchor.constraint(equalToConstant: 300),
            showHideButton.heightAnchor.constraint(equalToConstant: 20)
            ])
    }
}

//MARK: FSCalendarDataSource, FSCalendarDelegate

extension SceduleViewController: FSCalendarDataSource, FSCalendarDelegate {
    func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        calendarHieghtConstraint.constant = bounds.height
        view?.layoutIfNeeded()
        calendar.delegate = self
        calendar.dataSource = self
    }
   
}
