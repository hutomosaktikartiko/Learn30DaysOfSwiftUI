//
//  day2.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 11/03/24.
//

import SwiftUI

struct Day2: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Menjelajahi Berbagai View Dasar dalam SwiftUI").frame(maxWidth: .infinity, maxHeight: .infinity).font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.center)
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Memahami Konsep View").font(.title).fontWeight(.bold)
                    Text("1. Representasi Visual: Setiap View merepresentasikan bagian dari antarmuka pengguna yang akan ditampilkan kepada pengguna.")
                    Text("2. Reaktif: View dalam SwiftUI bersifat reaktif, yang berarti mereka secara otomatis merespons perubahan data atau kondisi yang terjadi dalam aplikasi.")
                    Text("3. Hierarki: View dapaat disusun secara hierarki, di mana satu View dapat menjadi bagia dari View lainnya. Hierarki View memungkinkan kita untuk membangun tampilan yang kompleks dengan cara tersetruktur dan terorganisir.")
                    Text("4. Kustomisasi: SwiftUI menyediakan berbagai jenis View yang dapat disesuaikan dengan berbagai cara, mulai dari mengubah penampilan dan gaya hingga menambahkan interaktivitas dan perilaku kustom.")
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Menjelajahi Berbagai View Dasar dalam SwiftUI").font(.title).fontWeight(.bold)
                    Text("Text").font(.title2).fontWeight(.semibold)
                    Text("Text adalah View yang digunakan untuk menampilkan teks dalam antarmuka aplikasi. Kita dapat menentukan teks yang akan ditampilkan dan menyesuaikan tampilannya menggunakan modifier")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    Text("Hello, SwiftUI!")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                    """)
                    Text("Pada contoh di atas, kita menambahkan modifier untuk menggunakan System Fonts bawaaan SwiftUI dengan .font(.title), selain itu terdapat kode .background(Color.yellow) untuk menambahkan background dari teks.")
                    Text("Hasilnya:").fontWeight(.semibold)
                    Text("Hello, SwiftUI!")
                        .font(.title)
                        .foregroundColor(.blue)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                    Text("Image").font(.title2).fontWeight(.semibold)
                    Text("Image adalah View yang digunakan untuk menampilkan gambar dalam antarmuka pengguna. Kita dapat menentukan gambar yang ingin ditampilkan dan menyesuaikan tampilannya menggunakan modifier. Untuk menampilkan image dari lokal, kita terlebih dahulu harus menambahkan image ke file Assets.xcassets dengan cara drag dan drop gambar ke file ini.")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    Image("cat-meme")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .frame(height: 200)
                    """)
                    Text("""
                        - resizable() digunakan untuk memberikan akses untuk mengubah ukuran gambar.
                        - aspectRatio(contentMode: .fit) untuk menentukan aspect ratio dari gambar untuk menjadi fit dengan frame.
                        - frame(height: 200) untuk mengubah ukuran tinggi gambar menjadi 200 dengan lebar yang menyesuaikan ukuran fit dari bawaaan gambar.
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    Image("cat-meme")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                    Text("Button").font(.title2).fontWeight(.semibold)
                    Text("Button adalah View yang digunakan untuk membuat tombol yang interaktif dalam antarmuka pengguna. Kita dapat menetukan teks atau konten tombol serta menambahkan aksi yang akan dilakukan ketika tombol ditekan.")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    Button(action: {
                        print("Button Tap Me Tapped")
                    }) {
                        Text("Tap Me")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                    }
                    """)
                    Text("Pada contoh di atas kita membuat View Button dengan aksi me-print 'Button Tap Me Tapped' ke terminal ketika button diklik.")
                    Text("Hasilnya:").fontWeight(.semibold)
                    Button(action: {
                        print("Button Tap Me Tapped")
                    }) {
                        Text("Tap Me")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Memahami Bagaimana Menggabungkan View menggunakan Stacks dan Modifier").font(.title).fontWeight(.bold)
                    Text("Stacks dalam SwiftUI merupakan tata letak yang digunakan untuk menyusun View secara vertikal (VStack), horizontal (HStack), atau berlapis (ZStack). Dengan menggunakan Stacks dapat memungkinkan kita untuk menggabungkan View secara terstruktur. Berikut contoh penggunaan VStack untuk menggabungkan View secara vertikal:")
                    Text("VStack").font(.title2).fontWeight(.semibold)
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    VStack(spacing: 10) {
                        Text("Title")
                           .font(.title)
                        Image("cat-meme")
                           .resizable()
                           .aspectRatio(contentMode: .fit)
                           .frame(height: 150)
                        Button(action: {
                           print("Tapped")
                        }) {
                           Text("Tap Me")
                        }
                    }
                    """)
                    Text("Pada kode tersebut kita membuat View yang digabungkan secara vertikal. Selain itu kita juga menambahkan spacing/padding sebesar 10 untuk antar View yang terdapat didalam Stacks itu.")
                    Text("Hasilnya:").fontWeight(.semibold)
                    VStack(spacing: 10) {
                        Text("Title")
                            .font(.title)
                        Image("cat-meme")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                        Button(action: {
                            print("Tapped")
                        }) {
                            Text("Tap Me")
                        }
                    }
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    Text("Kesimpulan").font(.title).fontWeight(.bold)
                    Text("1. Setiap komponen visual dalam aplikasi, seperti teks, gambar, tombol, atau formulir, adalah View.")
                    Text("2. Kita dapat menyesuaikan tampilan dan perilaku Views menggunakan modifiers seperti font, warna, dan latar belakang.")
                    Text("3. Dengan menggunakan Stacks dan modifiers, kita dapat menggabungkan View secara terstruktur dan membuat tampilan yang kompleks dalam aplikasi SwiftUI.")
                    Link(destination: URL(string: "https://hutomosaktikartiko.medium.com/30daysofswiftui-day-2-understanding-the-fundamentals-of-views-in-swiftui-7479e7ad4cb1")!) {
                        Image(systemName: "safari.fill").font(.title).fontWeight(.bold).foregroundColor(.gray)
                    }
                }
            }.padding()
        }.navigationBarTitle(Text("Day 2"))
    }
}
