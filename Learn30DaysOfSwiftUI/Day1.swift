//
//  day1.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 11/03/24.
//

import SwiftUI

struct Day1: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.title)
                .foregroundColor(.blue)
                .padding()
                .background(Color.yellow)
                .cornerRadius(10)
        }
        .padding()
    }
}
