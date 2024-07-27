//
//  ContentView.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    var basicChallenges: [DayItem] = [
        DayItem(
            day: 1,
            title: "Embarking on Your Journey with SwiftUI",
            view: AnyView(
                Day1()
            )
        ),
        DayItem(
            day: 2,
            title: "Understanding the Fundamentals of Views in SwiftUI",
            view: AnyView(
                Day2()
            )
        ),
        DayItem(
            day: 3,
            title: "Building Dynamic User Interactions with SwiftUI Controls",
            view: AnyView(
                Day3()
            )
        ),
        DayItem(
            day: 4,
            title: "Controlling Flexible Layouts with SwiftUI Stacks",
            view: AnyView(
                Day4()
            )
        ),
        DayItem(
            day: 5,
            title: "Exploring Your App with SwiftUI Navigation",
            view: AnyView(
                Day5()
            )
        ),
        DayItem(
            day: 6,
            title: "Bringing Your Interface to Life with SwiftUI Animations",
            view: AnyView(
                Day6()
            )
        ),
        DayItem(
            day: 7,
            title: "Carving Creativity with Amazing SwiftUI Modifiers",
            view: AnyView(Day7())
        ),
    ]

    var body: some View {
        NavigationView {
            List {
                Section(
                    "Basics SwiftUI"
                ) {
                    ForEach(
                        basicChallenges,
                        id: \.day
                    ) {
                        item in NavigationLink(
                            destination: item.view
                        ) {
                            Text(
                                "Day \(item.day): \(item.title)"
                            )
                        }
                    }
                }
            }.navigationTitle(
                "#30DaysOfSwiftUI"
            )
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
