//
//  Day6.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 09/06/24.
//

import SwiftUI

struct Day6: View {
    @State private var scale: CGFloat = 1.0
    @State private var showDetail = false
    @State private var rotation: Double = 0

    var body: some View {
        BodyPageDayView(
            navigationBarTitle: "Day 6",
            title: "Bringing Your Interface to Life with SwiftUI Animations",
            points: [PointItem(
                title: "Menjelajahi Kemampuan Animasi Bawaan di SwiftUI",
                description: "SwiftUI menyediakan berbagai kemampuan animasi bawaan yang memudahkan pengembang untuk menambahkan efek animasi ke dalam aplikasi mereka. Animasi ini dapat diterapkan pada berbagai properti view seperti ukuran, posisi, opacity, dan lainnya.\n\nAnimasi bawaan di SwiftUI bisa diterapkan menggunakan modifier .animation() . Kita dapat menggunakan berbagai jenis animasi bawaan seperti easeIn , easeOut , easeInOut , dan linear .",
                subPoints: [SubPointItem(
                    codeExample: CodeExampleItem(
                        codeView: AnyView(VStack {
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .scaleEffect(scale)
                                .animation(.easeInOut(duration: 2), value: scale)
                            Button("Animate") {
                                scale = scale == 1.0 ? 1.5 : 1.0
                            }
                        }),
                        explanation: "Pada contoh di atas, kita menggunakan animation(.easeInOut(duration: 2), value: scale) untuk mengubah ukuran gambar ketika tombol ditekan."
                    )
                )]
            ),
            PointItem(
                title: "Mempelajari Cara Menganimasikan Transisi View, Opacity, dan Position",
                description: "SwiftUI memungkinkan kita untuk menganimasikan transisi antara view, perubahan opacity, dan position dengan sangat mudah.\n\nKita dapat menggunakan modifier seperti transition() , .opacity() , dan .offset() bersama dengan .animation() untuk mengatur animasi transisi, perubahan opacity, dan position.",
                subPoints: [SubPointItem(
                    codeExample: CodeExampleItem(
                        codeView: AnyView(VStack {
                            Button("Toggle Detail") {
                                withAnimation {
                                    showDetail.toggle()
                                }
                            }

                            if showDetail {
                                Text("Detail View")
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(10)
                                    .transition(.slide)
                                    .animation(.easeInOut, value: showDetail)
                            }
                        }),
                        explanation: "Pada contoh di atas, kita menggunakan .transition(.slide) untuk menambahkan animasi slide pada view ketika ditampilkan dan disembunyikan."
                    )
                )]
            ), PointItem(
                title: "Memahami Cara Membuat Animasi dan Efek Kustom di SwiftUI",
                description: "Selain animasi bawaan, pada SwiftUI memungkinkan kita juga untuk membuat animasi kustom dan efek sesuai dengan kebutuhan.\n\nDengan menggunakan kombinasi dari berbagai modifier animasi dan kustomisasi durasi, kurva dan nilai, kita dapat membuat animasi yang kompleks dan menarik.",
                subPoints: [SubPointItem(
                    codeExample: CodeExampleItem(
                        codeView: AnyView(VStack {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .rotationEffect(.degrees(rotation))
                                .animation(.interpolatingSpring(stiffness: 50, damping: 5), value: rotation)

                            Button("Rotate") {
                                rotation += 45
                            }
                        }),
                        explanation: "Pada contoh di atas, kita menggunakan animation(.interpolatingSpring(stiffness: 50, damping: 5), value: rotation) untuk menambahkan animasi rotasi dengan efek spring yang kustom."
                    )
                )]
            )],
            conclusions: [
                "NavigationView dan NavigationLink digunakan untuk membuat navigasi antar layar",
                "Mengelola dan mengirim data antar layar dapat menggunakan @State dan @Binding",
            ],
            mediumUrl: "https://hutomosaktikartiko.medium.com/30daysofswiftui-day-5-exploring-your-app-with-swiftui-navigation-cd1a4f92b1f9"
        )
    }
}
