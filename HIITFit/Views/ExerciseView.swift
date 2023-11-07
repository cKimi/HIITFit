//
//  ExerciseView.swift
//  HIITFit
//
//  Created by Carlos Kimura on 27/10/23.
//

import SwiftUI
import AVKit

struct ExerciseView: View {
    
    @Binding var selectedTab: Int
    @State private var rating = 0
    
    let index: Int
    let interval: TimeInterval = 30
    
    var startButton: some View {
        Button("Start Exercise") { }
    }
    
    var doneButton: some View {
        Button("Done") {
            selectedTab = lastExercise ? 9 : selectedTab + 1
        }
    }
    
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: Exercise.exercises[index].exerciseName)
                    .padding(.bottom)
                
                VideoPlayerView(videoName: exercise.videoName)
                  .frame(height: geometry.size.height * 0.45)

                Text(Date().addingTimeInterval(interval), style: .timer)
                    .font(.system(size: geometry.size.height * 0.07))
                
                HStack(spacing: 150) {
                    startButton
                    doneButton
                }
                .font(.title3)
                .padding()
                
                RatingView(rating: $rating)
                    .padding()
                
                Spacer()
                Button("History") { }
                    .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(selectedTab: .constant(1), index: 1)
}
