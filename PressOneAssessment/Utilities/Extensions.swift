//
//  Extensions.swift
//  PressOneAssessment
//
//  Created by Adewale Sanusi on 08/11/2023.
//

import Foundation

extension Double {
    func rounded(toDecimalPlaces decimalPlaces: Int) -> Double {
        let multiplier = pow(10.0, Double(decimalPlaces))
        return (self * multiplier).rounded() / multiplier
    }
}
