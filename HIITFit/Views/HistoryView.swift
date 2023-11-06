//
//  HistoryView.swift
//  HIITFit
//
//  Created by Carlos Kimura on 06/11/23.
//

import SwiftUI

struct HistoryView: View {
    
    let history = HistoryStore()
    
    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .padding()
            
            Form {
                ForEach(history.exerciseDays) { day in
                    Section(
                        header:
                            Text(day.date.formatted(as: "MMM d"))
                            .font(.headline)) {
                                ForEach(day.exercises, id: \.self) { exercise in
                                    Text(exercise)
                                }
                            }
                }
            }
            
        }
    }
}

#Preview {
    HistoryView()
}
