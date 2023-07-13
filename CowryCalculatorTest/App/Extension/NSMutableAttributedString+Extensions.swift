//
//  NSMutableAttributedString+Extensions.swift
//  CowryCalculatorTest
//
//  Created by Bakare Waris on 13/07/2023.
//

import UIKit

extension NSMutableAttributedString {
    func setColor(color: UIColor, forText stringValue: String) {
       let range: NSRange = self.mutableString.range(of: stringValue, options: .caseInsensitive)
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
    }
}
