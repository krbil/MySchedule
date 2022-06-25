//
//  UIStackView.swift
//  MySchedule
//
//  Created by Илья Крылов on 26.06.2022.
//

import Foundation
import UIKit

extension UIStackView {
    convenience init(arrangedSubViews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSubViews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distribution
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
}
