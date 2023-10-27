//
//  ContentView.swift
//  HIITFit
//
//  Created by Carlos Kimura on 27/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WelcomeView()
            ExerciseView()
            Text("Exercise 2")
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
