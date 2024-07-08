//
//  Day4.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 07/06/24.
//

import SwiftUI

struct Day4: View {
    var body: some View {
        ScrollView {
            VStack(
                alignment: .leading,
                spacing: 20
            ) {
                Text(
                    "Mengontrol Tata Letak Fleksibel dengan SwiftUI Stacks"
                ).frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                ).font(
                    .largeTitle
                ).fontWeight(
                    .bold
                ).multilineTextAlignment(
                    .center
                )
                Divider()
                VStack(
                    alignment: .leading,
                    spacing: 10
                ) {
                    /// A.
                    Text(
                        "Memahami Konsep Fleksibilitas dalam Tata Letak"
                    ).font(
                        .title
                    ).fontWeight(
                        .bold
                    )
                    Text(
                        "Fleksibilas dalam tata letak mengacu pada kemampuan antarmuka pengguna untuk menyesuaikan diri dengan berbagai ukuran layar dan orientasi. Hal ini penting untuk memastikan aplikasi terlihat baik dan berfungsi dengan baik di berbagai perangkat, mulai dari iPhone kecil hingga iPad besar."
                    )
                    /// A.1
                    Text(
                        "Mengapa Stacks Penting?"
                    ).font(
                        .title2
                    ).fontWeight(
                        .semibold
                    )
                    Text(
                        "Stacks memungkinkan kita mengatur elemen UI secara vertikal (VStack), horizontal (HStack), atau berlapis (ZStack). Dengan menggunakan Stacks , kita dapat menciptakan tata letak yang mudah diatur dan dipelihara, serta memastikan tata letak yang konsisten di berbagai ukuran layar."
                    )
                }
                Divider()
                VStack(
                    alignment: .leading,
                    spacing: 10
                ) {
                    /// B.
                    Text(
                        "Menggunakan VStack, HStack, dan ZStack untuk Mengatur Tampilan"
                    ).font(
                        .title
                    ).fontWeight(
                        .bold
                    )
                    /// B.1
                    Text(
                        "VStack (Vertical Stack)"
                    ).font(
                        .title2
                    ).fontWeight(
                        .semibold
                    )
                    Text(
                        "VStack mengatur elemen secara vertikal, dari atas ke bawah."
                    )
                    Text(
                        "Contoh:"
                    ).fontWeight(
                        .semibold
                    )
                    CodeSnippetView(
                        code: """
                        VStack {
                            Text("Hello, World!")
                            Image(systemName: "star.fill")
                            Button(action:  {
                                print("Button tapped")
                            }) {
                                Text("Tap Me")
                            }
                        }
                        """
                    )
                    Text(
                        "Hasilnya:"
                    ).fontWeight(
                        .semibold
                    )
                    VStack {
                        Text(
                            "Hello, World!"
                        )
                        Image(
                            systemName: "star.fill"
                        )
                        Button(action:  {
                            print(
                                "Button tapped"
                            )
                        }) {
                            Text(
                                "Tap Me"
                            )
                        }
                    }
                    Text(
                        "Pada contoh di atas, teks, gambar, dan tombol akan ditampilkan secara vertikal."
                    )
                    // B.2
                    Text(
                        "HStack (Horizontal Stack)"
                    ).font(
                        .title2
                    ).fontWeight(
                        .semibold
                    )
                    Text(
                        "HStack mengatur elemen secara horizonal, dari kiri ke kanan."
                    )
                    Text(
                        "Contoh:"
                    ).fontWeight(
                        .semibold
                    )
                    CodeSnippetView(
                        code: """
                        HStack {
                            Text("Hello, World!")
                            Image(systemName: "star.fill")
                            Button(action: {
                                print("Button tapped")
                            }) {
                                Text("Tap Me")
                            }
                        }
                        """
                    )
                    Text(
                        "Hasilnya:"
                    ).fontWeight(
                        .semibold
                    )
                    HStack {
                        Text(
                            "Hello, World!"
                        )
                        Image(
                            systemName: "star.fill"
                        )
                        Button(action: {
                            print(
                                "Button tapped"
                            )
                        }) {
                            Text(
                                "Tap Me"
                            )
                        }
                    }
                    Text(
                        "Pada contoh di atas, teks gambar, dan tombol akan ditampilkan secara horizontal."
                    )
                    // B.3
                    Text(
                        "ZStack (Z-Axis Stack)"
                    ).font(
                        .title2
                    ).fontWeight(
                        .semibold
                    )
                    Text(
                        "ZStack mengatur elemen secara berlapis, dengan elemen yang ditambahkan terakhir berakhir berada di atas."
                    )
                    Text(
                        "Contoh:"
                    ).fontWeight(
                        .semibold
                    )
                    CodeSnippetView(
                        code: """
                        ZStack {
                            Image(systemName: "star.fill")
                            Text("Hello, World!").foregroundColor(.white)
                        }
                        """
                    )
                    Text(
                        "Hasilnya:"
                    ).fontWeight(
                        .semibold
                    )
                    ZStack {
                        Image(
                            systemName: "star.fill"
                        )
                        Text(
                            "Hello, World!"
                        ).foregroundColor(
                            .white
                        )
                    }
                    Text(
                        "Pada contoh di atas, teks akan ditampilkan di atas gambar."
                    )
                }
                Divider()
                VStack(
                    alignment: .leading,
                    spacing: 10
                ) {
                    // C
                    Text(
                        "Menggunakan Spacer untuk Menyesuaikan Ruang Antar Elemen"
                    ).font(
                        .title
                    ).fontWeight(
                        .bold
                    )
                    Text(
                        "Spacer adalah elemen yang digunakan untuk mengisi ruang kosong antar elemen dalam Stack. Spacer akan memperluas dirinya sebanyak mungkin, mendorong elemen lain untuk menyesuaikan diri."
                    )
                    Text(
                        "Contoh:"
                    ).fontWeight(
                        .semibold
                    )
                    CodeSnippetView(
                        code: """
                    HStack {
                        Text("Leading")
                        Spacer()
                        Text("Trailing")
                    }
                    """
                    )
                    Text(
                        "Hasilnya:"
                    ).fontWeight(
                        .semibold
                    )
                    HStack {
                        Text(
                            "Leading"
                        )
                        Spacer()
                        Text(
                            "Trailing"
                        )
                    }
                    Text(
                        "Pada contoh di atas, Spacer akan mendorong teks 'Leading' ke kiri dan teks 'Trailing' ke kanan."
                    )}
                
                Divider()
                VStack(
                    alignment: .leading,
                    spacing: 10
                ) {
                    // D
                    Text(
                        "Menggunakan Aligment untuk Mengontrol Penempatan Elemen dalam Stack"
                    ).font(
                        .title
                    ).fontWeight(
                        .bold
                    )
                    Text(
                        "Aligment memungkinkan kita mengatur bagaimana elemen dalam Stack sejajar satu sama lain. VStack dapat menggunakan aligment .leading , .center , dan .trailing . Sedangkan pada HStack terdapat .top , .center , dan .bottom ."
                    )
                    Text(
                        "Contoh:"
                    ).fontWeight(
                        .semibold
                    )
                    CodeSnippetView(
                        code: """
                    Text("Hasilnya:").fontWeight(.semibold)
                    VStack(alignment: .leading, content: {
                        Text("Hello, World!")
                        Text("This is a VStack")
                    })
                    HStack(alignment: .top, content: {
                        Text("Hello, World!")
                        Text("This is an HStack")
                    })
                    """
                    )
                    Text(
                        "Hasilnya:"
                    ).fontWeight(
                        .semibold
                    )
                    VStack(alignment: .leading,
                           content: {
                        Text(
                            "Hello, World!"
                        )
                        Text(
                            "This is a VStack"
                        )
                    })
                    HStack(alignment: .top,
                           content: {
                        Text(
                            "Hello, World!"
                        )
                        Text(
                            "This is an HStack"
                        )
                    })
                    Text(
                        "Pada contoh di atas, teks dalam VStack akan sejajar ke kiri, dan teks dalam HStack akan sejajar ke atas."
                    )}
                
                Divider()
                VStack(
                    alignment: .leading,
                    spacing: 10
                ) {
                    // E
                    Text(
                        "Membuat Tata Letak yang Responsif dengan Menggunakan Stacks"
                    ).font(
                        .title
                    ).fontWeight(
                        .bold
                    )
                    Text(
                        "Kita dapat mengkombinasikan VStack , HStack , dan ZStack untuk membuat tata letak yang kompleks dan responsif. Misalnya, menggunakan VStack di dalamHStack atau sebaliknya."
                    )
                    Text(
                        "Contoh:"
                    ).fontWeight(
                        .semibold
                    )
                    CodeSnippetView(
                        code: """
                    HStack {
                        Text("Leading")
                        Spacer()
                        Text("Trailing")
                    }
                    ZStack {
                        Image(systemName:"star.fill")
                        Text("Overlay Text").foregroundStyle(.red)
                    }
                    """
                    )
                    Text(
                        "Hasilnya:"
                    ).fontWeight(
                        .semibold
                    )
                    VStack {
                        HStack {
                            Text(
                                "Leading"
                            )
                            Spacer()
                            Text(
                                "Trailing"
                            )
                        }
                        ZStack {
                            Image(
                                systemName:"star.fill"
                            )
                            Text(
                                "Overlay Text"
                            ).foregroundStyle(
                                .red
                            )
                        }
                    }
                    Text(
                        "Pada contoh di atas, kita menggabungkan HStack dan ZStack di dalam VStack untuk membuat tata letak yang lebih kompleks."
                    )}
                Divider()
                VStack(
                    alignment: .leading,
                    spacing: 10
                ) {
                    Text(
                        "Kesimpulan"
                    ).font(
                        .title
                    ).fontWeight(
                        .bold
                    )
                    Text(
                        "1. Menggunakan VStack , HStack , danZStack memungkinkan kita untuk mengatur elemen UI dengan cara yang tersktruktur dan mudah diatur."
                    )
                    Text(
                        "2. Spacer dan alignment adalah alat yang sangat berguna untuk menyesuaikan ruang antar elemen dan mengontrol penempatan elemen dalam Stack."
                    )
                    Link(
                        destination: URL(
                            string: "https://hutomosaktikartiko.medium.com/30daysofswiftui-day-2-understanding-the-fundamentals-of-views-in-swiftui-7479e7ad4cb1"
                        )!
                    ){
                        Image(
                            systemName: "safari.fill"
                        ).font(
                            .title
                        ).fontWeight(
                            .bold
                        ).foregroundColor(
                            .gray
                        )
                    }
                }
            }.padding()
        }.navigationBarTitle(
            Text(
                "Day 4"
            )
        )
    }
}
