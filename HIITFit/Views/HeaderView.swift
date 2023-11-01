//
//  HeaderView.swift
//  HIITFit
//
//  Created by Carlos Kimura on 01/11/23.
//

import SwiftUI

struct HeaderView: View {
    
    let exerciseName: String
    
    var body: some View {
        VStack {
            Text(exerciseName)
                .font(.largeTitle)
            HStack {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
            }
            .font(.title2)
        }
    }
}


#Preview {
    HeaderView(exerciseName: "Squat")
        .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
}
