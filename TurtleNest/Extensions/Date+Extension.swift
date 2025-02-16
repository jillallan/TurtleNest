//
//  Date+Extension.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation

extension Date {
    static func from(year: Int, month: Int, day: Int) -> Date? {
        var components = DateComponents()
        components.year = year
        components.month = month
        components.day = day

        return Calendar.current.date(from: components)
    }
}
