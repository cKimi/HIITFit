//
//  HistoryStore.swift
//  HIITFit
//
//  Created by Carlos Kimura on 06/11/23.
//

import Foundation

struct ExerciseDay: Identifiable {
    let id = UUID()
    let date: Date
    var exercises: [String] = []
}

struct HistoryStore {
    var exerciseDays: [ExerciseDay] = []
    
    init() {
        #if DEBUG
        createDevData()
        #endif
    }
}
