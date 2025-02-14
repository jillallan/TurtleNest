//
//  Pot.swift
//  TurtleNest
//
//  Created by Jill Allan on 14/02/2025.
//

import Foundation
import SwiftData

@Model
final class Pot {
    var title: String
    var transactions = [Transaction]()
    
    init(title: String) {
        self.title = title
    }
}
