//
//  SuccessView.swift
//  HIITFit
//
//  Created by Carlos Kimura on 06/11/23.
//

import SwiftUI

struct SuccessView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75.0, height: 75.0)
                    .foregroundColor(.purple)
                
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("""
                     Good job completing all four exercises!
                     Remember tomorrow's another day.
                     So eat well and get some rest.
                     """)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            }
            
            VStack {
                Spacer()
                Button("Continue") {
                    dismiss()
                }
                .padding()
            }
        }
    }
}

#Preview {
    SuccessView()
}
