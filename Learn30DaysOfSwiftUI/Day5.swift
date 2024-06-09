//
//  Day5.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 09/06/24.
//

import SwiftUI

struct Day5: View {
    @State private var name: String = ""
    
    var body: some View {
        BodyPageDayView(navigationBarTitle: "Day 5", title: "Exploring Your App with SwiftUI Navigation", points: [PointItem(title: "Navigasi antar Layar dengan NavigationView dan NavigationLink", description: "Navigasi adalah elemen penting dalam aplikasi modern yang memungkinkan pengguna berpindah antar layar untuk melihat atau memasukkan informasi. SwiftUI menyediakan cara yang efisien dan elegan untuk mengimplementasikan navigasi dengan NavigationView dan NavigationLink.\n\nNavigationView memberikan konteks yang memungkinkan kita untuk menyusun tampilan dalam struktur hierarkis. Ini sangat berguna untuk aplikasi yang memiliki banyak level navigasi, seperti aplikasi pengaturan atau aplikasi belanja. Dengan menggunakan NavigationView , kita dapat membuat pengalaman navigasi yang lebih terorganisir dan mudah diikuti oleh pengguna.\n\nNavigationLink , memungkinkan pengguna untuk menavigasi ke tampilan baru ketika sebuah elemen, seperti teks atau tombol, diklik. Ini menyediakan cara yang sederhana dan intuitif untuk menghubungkan berbagai bagian dari aplikasi kita.\n\nNavigasi ini memungkinkan kita untuk membangun aplikasi dengan struktur yang lebih kompleks dan memungkinkan pengguna untuk berpindah antar tampilan dengan mudah. Setiap kali pengguna menavigasi ke layar baru, SwiftUI mengelola transisi dan pengelolaan tampilan secara otomatis, sehingga memberikan pengalaman pengguna yang mulus.",
                                                                                                                             subPoints: [SubPointItem(
                                                                                                                                codeExample: CodeExampleItem(
                                                                                                                                    codeView: AnyView(NavigationView {
                                                                                                                                        VStack {
                                                                                                                                            Text("Welcome to the main View").font(.headline).padding()
                                                                                                                                            NavigationLink(destination: DetailView()) {
                                                                                                                                                Text("Go to Detail View").padding().background(.blue).foregroundColor(.white).cornerRadius(8)
                                                                                                                                            }
                                                                                                                                        }.navigationTitle("Home")
                                                                                                                                    }),
                                                                                                                                    explanation: "- NavigationView membungkus tampilan utama ('ContentView'), sehingga memungkinkan kita untuk menambahkan navigasi.\n-NavigationLink digunakan untuk menavigasi ke 'DetailView' saat teks 'Go to Detail View' diklik.\n-NavigationTitle digunakan untuk memberikan judul pada setiap layar"
                                                                                                                                )
                                                                                                                             ),
                                                                                                                             ]                                                                         ),
                                                                                                                   PointItem(title: "Memahami Cara Mengirim Data antar View saat Navigasi", description: "Sering kali, kita perlu mengirim data antar tampilan saat navigasi. Ini dapat dilakukan dengan memanfaatkan properti '@State' dan '@Binding'.\n\nDalam SwiftUI, data dapat dengan mudah dikirim dari satu tampilan ka tampilan lainnya menggunakan properti '@State' dan '@Binding'. '@State' digunakan untuk menyimpan data yang dapat diubah, sedangkan '@Binding' digunakan untuk menggabungkan data tersebut antara tampilan-tampilan yang berbeda.\n\nDengan menggunakan '@Binding', kita dapat memastikan bahwa perubahan yang dilakukan pada data di satu tampilan akan otomatis tercermin di tampilan lain. Ini sangat penting untuk menjaga konsistensi data dan memastikan bahwa aplikasi berfungsi sebagaimana mestinya.",
                                                                                                                             subPoints: [SubPointItem(
                                                                                                                                codeExample: CodeExampleItem(
                                                                                                                                    codeView: AnyView(NavigationView {
                                                                                                                                        VStack {
                                                                                                                                            TextField("Enter your name", text: $name)
                                                                                                                                            NavigationLink(destination: DetailView2(name: $name)) {
                                                                                                                                                Text("Go to Detail View 2").padding().background(.blue).foregroundColor(.white).cornerRadius(8)
                                                                                                                                            }
                                                                                                                                        }.navigationTitle("Home")
                                                                                                                                    }),
                                                                                                                                    explanation: "- @State digunakan untuk emngelola input teks di ContentView.\n-@Binding digunakan di DetailView untuk menerima dan menampilkan data dari ContentView.\n-Perubahan yang dilakukan pada name di ContentView akan secara otomatis tercermin di DetailView"
                                                                                                                                )
                                                                                                                             ),
                                                                                                                             ]                                                                         )
        ], conclusions: [
        "NavigationView dan NavigationLink digunakan untuk membuat navigasi antar layar",
        "Mengelola dan mengirim data antar layar dapat menggunakan @State dan @Binding"
        ], mediumUrl: "https://hutomosaktikartiko.medium.com/30daysofswiftui-day-5-exploring-your-app-with-swiftui-navigation-cd1a4f92b1f9")
    }
}

struct DetailView: View {
    var body: some View {
        Text("Welcome to the Detail View").navigationTitle("Detail")
    }
}

struct DetailView2: View {
    @Binding var name: String
    
    var body: some View {
        VStack {
            Text("Welcome to Detail View")
            Text("Your name is \(name)").font(.title).padding()
        }.navigationTitle("Detail")
    }
}
