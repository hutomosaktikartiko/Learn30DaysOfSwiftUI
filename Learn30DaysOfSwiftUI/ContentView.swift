//
//  ContentView.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    var basicChallenges:[DayItem] = [
        DayItem(day: 1, title: "Embarking on Your Journey with SwiftUI", view: AnyView(Day1())),
        DayItem(day: 2, title: "Understanding the Fundamentals of Views in SwiftUI", view: AnyView(Day2())),
        DayItem(day: 3, title: "Building Dynamic User Interactions with SwiftUI Controls", view: AnyView(Day3()))
    ]
    
    var body: some View {
        NavigationView{
            List {
                Section("Basics SwiftUI"){
                    ForEach(basicChallenges, id: \.day){
                        item in NavigationLink(destination: item.view) {
                            Text("Day \(item.day): \(item.title)")
                        }
                    }
                }
            }.navigationTitle("#30DaysOfSwiftUI")
        }
    }
}

#Preview {
    ContentView()
}

struct DayItem {
    let day: Int
    let title: String
    let view: AnyView
}
