//
//  Step.swift
//  My Steps Tracker.
//
//  Created by N. Shovkovy on 6/15/22.
//

import Foundation

struct Step: Identifiable {
    let id = UUID()
    let count: Int
    let date: Date
}
