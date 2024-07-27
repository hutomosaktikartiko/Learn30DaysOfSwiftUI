//
//  Day7.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 17/07/24.
//

import SwiftUI

struct Day7: View {
    var body: some View {
        BodyPageDayView(
            navigationBarTitle: "Day 7",
            title: "Carving Creativity with Amazing SwiftUI Modifiers",
            points: [PointItem(
                title: "Mempelajari tentang Modifier dalam SwiftUI untuk Penataan dan Penyesuain View",
                description: "Modifier adalah fungsi yang digunakan untuk mengubah atau menyesuaikan properti dari sebuah View. Dalam SwiftUI, Modifier diterapkan menggunakan metode chaining, yang berarti kita dapat menggabungkan beberapa Modifier secara berurutan untuk mencapai efek yang diinginkan.\n\nDetail Tentang Modifier:\n1. Deklaratif: Modifier dalam SwiftUI bersifat deklaratif, yang berarti kita mendeklarasikan tampilan akhir yang diinginkan dan SwiftUI akan mengurus detail penerapannya.\n2. Chaining: Dengan metode chaining, kita dapata menerapkan beberapa modifier secara berurutan untuk menciptakan tampilan yang kompleks.",
                subPoints: [SubPointItem(
                    codeExample: CodeExampleItem(
                        codeView: AnyView(
                            Text("Hello, SwiftUI!")
                                .padding()
                                .background(Color.yellow)
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                        ),
                        explanation: "Pada contoh di atas, kita menambahkan padding, latar belakang berwarna kuning, font besar, dan warna teks biru pada View Text."
                    )
                )]
            ),
            PointItem(
                title: "Menjelajahi Modifier Umum dalam SwiftUI",
                description: "Berikut adalah beberapa Modifier umum yang sering digunakan dalam SwiftUI:",
                subPoints: [SubPointItem(
                    title: "Padding",
                    description: "Modifier ini menambahkan ruang di sekitar View.",
                    codeExample: CodeExampleItem(
                        codeView: AnyView(
                            Text("Hello, SwiftUI!")
                                .padding()
                        ),
                        explanation: "Padding ditambahkan di sekitar teks, membuatnya tidak terlalu menempel pada batas View."
                    )
                ),
                SubPointItem(
                    title: "Background",
                    description: "Modifier ini menambahkan latar belakang pada View.",
                    codeExample: CodeExampleItem(
                        codeView: AnyView(
                            Text("Hello, SwiftUI!")
                                .background(Color.yellow)
                        ),
                        explanation: "Latar belakang kuning ditambahkan di belakang teks."
                    )
                ),
                SubPointItem(
                    title: "Font",
                    description: "Modifier ini mengubah ukuran dan gaya font dari teks.",
                    codeExample: CodeExampleItem(
                        codeView: AnyView(
                            Text("Hello, SwiftUI!")
                                .font(.largeTitle)
                        ),
                        explanation: "Ukuran font diubah menjadi besar (large title)."
                    )
                )]
            ), PointItem(
                title: "Memahami Cara Menggabungkan Beberapa Modifier untuk Efek Styling yang Kompleks",
                description: "Menggabungkan beberapa Modifier memungkinkan kita untuk menciptakan tampilan yang lebih kaya dan dinamis.",
                subPoints: [SubPointItem(
                    codeExample: CodeExampleItem(
                        codeView: AnyView(
                            Text("Hello, SwiftUI!")
                                .padding()
                                .background(Color.yellow)
                                .font(.largeTitle)
                                .foregroundColor(.blue)
                                .cornerRadius(10)
                        ),
                        explanation: "Pada contoh di atas, kita menggunakan:\n1. Padding: Menambahkan ruang di sekitar teks.\n2. Background: Menambahkan latar belakang kuning.\n3. Font: mengubah ukuran font menjadi besar.\n4. ForegroundColor: Mengubah warna teks menjadi biru.\n5. CornderRadius: Membuat sudut View menjadi melengkung dengan radius 10.\n\nDengan menggunakan Modifier secara kreatif, kita dapat mengubah tampilan aplikasi SwiftUI kita menjadi lebih menarik dan dinamis. Menggabungkan Modifier memberikan fleksibilitas untuk menciptakan desain yang kompleks dan responsif."
                    )
                )]
            )],
            conclusions: [
                "Modifier dalam SwiftUI memungkinkan kita untuk menyesuaikan tampilan dan perilaku View secara dinamis.",
                "Modifier umum seperti padding, background, dan font digunakan untuk penataan dasar.",
                "Menggabungkan beberapa Modifier memungkinkan kita untuk mencapai efek styling yang kompleks dan kreatif."
            ],
            mediumUrl: "https://hutomosaktikartiko.medium.com/30daysofswiftui-day-7-carving-creativity-with-amazing-swiftui-modifiers-4a6a63b80fda"
        )
    }
}
