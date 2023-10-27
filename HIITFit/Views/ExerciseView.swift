//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Carlos Kimura on 27/10/23.
//

import SwiftUI

struct ExerciseView: View {
    
    let index: Int
    let videoNames = ["squat", "step-up", "burpee", "sun-salute"]
    let exerciseNames = ["Squat", "Step Up", "Burpee", "Sun Salute"]
    
    var body: some View {
        Text(exerciseNames[index])
    }
}

#Preview {
    ExerciseView(index: 0)
}
