//
//  UILabel.swift
//  MySchedule
//
//  Created by Илья Крылов on 26.06.2022.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont?, textAlignment: NSTextAlignment) {
        self.init()
        self.text = text
        self.font = font
        self.textAlignment = textAlignment
        self.textColor = .black
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
