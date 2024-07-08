//
//  Day3.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 16/03/24.
//

import SwiftUI

struct Day3: View {
    // text field
    @State private var username: String = ""
    @FocusState private var emailFieldIsFocused: Bool

    @State private var username2: String = ""
    @State private var password: String = ""

    // toggle
    @State private var isToogled: Bool = false
    @State private var isFeatureEnabled: Bool = false

    // picker
    @State private var selectedOptionIndex = 0
    let options = ["Option 1", "Options 2", "Options 3"]

    // handling user interactions and data binding
    @State private var notes: [String] = []
    @State private var newNote: String = ""

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Membangun Interaksi Pengguna yang Dinamis dengan SwiftUI Controls").frame(maxWidth: .infinity, maxHeight: .infinity).font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.center)
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    /// A.
                    Text("TextField").font(.title).fontWeight(.bold)
                    /// A.1
                    Text("Penggunaan TextField").font(.title2).fontWeight(.semibold)
                    Text("TextField adalah salah satu kontrol yang paling umum digunakan dalam SwiftUI untuk memungkinkan user memasukkan teks atau input ke dalam aplikasi. Dengan menggunakan TextField, kita dapat dengan mudah membuat form, kotak pencarian, atau bagian lain dari antarmuka user yang memerlukan inputan teks.")
                    Text("Pada saat pembuatan TextField, sebenarnya kita memberikan label dan binding ke suatu nilai. Jika nilai tersebut adalah string, maka TextField akan terus memperbarui nilai ini saat pengguna mengetik atau mengeddit teks dalam bidang tersebut. Sedakna untuk tipe non-string, TextField akan memperbaru nilai ketika pengguna menyelesaikan editan mereka, seperti menekan tombol Return pada keyboard.")
                    Text("Contoh berikut menunjukkan sebuah TextField untuk menerima username, dan sebuah Text view di bawahnya yang mengikuti nilai username secara terus-menerus. Text view ini akan berubah warna saat pengguna sedang ataupun telah mengakhiri pengeditan.")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    @State private var username: String = ""
                    @FocusState private var emailFieldIsFocused: Bool

                    var body: some View {
                        TextField(
                            "User name (email address)",
                            text: $username
                        )
                        .focused($emailFieldIsFocused)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .border(.secondary)

                        Text(username)
                            .foregroundColor(emailFieldIsFocused ? .red : .blue)
                    }
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    TextField(
                        "User name (email address)",
                        text: $username
                    )
                    .focused($emailFieldIsFocused)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .border(.secondary)
                    Text("Inputted Username: \(username)")
                        .foregroundColor(emailFieldIsFocused ? .red : .blue)
                    /// A.2
                    Text("Text fields prompts").font(.title2).fontWeight(.semibold)
                    Text("Kita dapat mengatur prompts eksplisit pada text field untuk membimbing user tentang teks apa yang harus diinput. Ini sangat berguna untuk memberikan panduan kepada user, terutama dalam situasi di mana bidang text field harus diisi.")
                    Text("Contoh:").fontWeight(.semibold)
                    Text("Pada form register, user diwajibkan untuk mengisi form username dan password. Kita dapat menggunakan prompt untuk menunjukkan bahwa kedua form tersebut wajib diisi, seperti berikut:")
                    CodeSnippetView(code: """
                    Form {
                        TextField(text: $username, prompt: Text("Required")) {
                            Text("Username")
                        }
                        SecureField(text: $password, prompt: Text("Required")) {
                            Text("Password")
                        }
                    }.frame(height: 150)
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    Form {
                        TextField(text: $username2, prompt: Text("Required")) {
                            Text("Username")
                        }
                        SecureField(text: $password, prompt: Text("Required")) {
                            Text("Password")
                        }
                    }.frame(height: 150)
                    Text("Dalam contoh ini, prompt 'Required' digunakan untuk memberikan petunjuka bahwa kedua form itu harus diisi sebelum user dapat melanjutkan menggunakan aplikasi.")
                    /// A.3
                    Text("Styling text fields").font(.title2).fontWeight(.semibold)
                    Text("Kita dapat menyesuaikan tampilan dan interaksi dari TextField menggunakan modifier textFieldStyle(...) , dengan memasukan instance dari TextFieldStyle . Contoh berikut menerapkan style roundedBorder pada text field.")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    TextField(text: $username, prompt: Text("Required")) {
                            Text("Username")
                        }.textFieldStyle(.roundedBorder)
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    TextField(text: $username, prompt: Text("Required")) {
                        Text("Username")
                    }.textFieldStyle(.roundedBorder)
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    /// B.
                    Text("Toggle").font(.title).fontWeight(.bold)
                    Text("Toggle adalah kontrol UI yang memungkinkan pengguna untuk memilih antar dua opsi biner, seperti on/off, ya/tidak, ataupun aktif/nonaktif. Dalam SwiftUI, kita dapat menggunakan view Toggle untuk membuat toggle.")
                    /// B.1
                    Text("Penggunaan Toggle").font(.title2).fontWeight(.semibold)
                    Text("Kita dapat menambahkan toggle ke tampilan aplikasi dengan menggunakan syntax berikut:.")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    Toggle("Enable Feature", isOn: $isToogled)
                            .padding()
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    Toggle("Enable Feature", isOn: $isToogled)
                        .padding()
                    Text("Di sini, 'Enable Feature' adalah label yang akan ditampilkan bersama dengan Toogle, dan $isToggled adalah binding ke nilai boolean yang akan menentukan apakah toggle sedang aktif atau tidak.")
                    /// B.2
                    Text("Handling toggle").font(.title2).fontWeight(.semibold)
                    Text("Ketika pengguna mengubah status toggle, nilai yang dibinding $isToggled akan diperbarui secara otomatis. Maka dengan itu kita dapat menangani perubahan ini dengan menambahkan logika yang sesuai ke dalam blok body atau kita dapat juga menggunakan modifier .onChanged(...) untuk melakukan tindakan tertentu setiap kali nilai toggle berubah.")
                    Text("Contoh:").fontWeight(.semibold)
                    Text("Misalkan kita user untuk mengaktifkan atau menonaktifkan fitur dalam aplikasi kita. Berikut contoh kodenya:")
                    CodeSnippetView(code: """
                    Toggle("Enable Feature", isOn: $isFeatureEnabled)
                        .padding()
                    if isFeatureEnabled {
                        Text("Feature is enabled!")
                            .padding()
                    } else {
                        Text("Feature is disabled.")
                            .padding()
                    }
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    Toggle("Enable Feature", isOn: $isFeatureEnabled)
                        .padding()
                    if isFeatureEnabled {
                        Text("Feature is enabled!")
                            .padding()
                    } else {
                        Text("Feature is disabled.")
                            .padding()
                    }
                    Text("Di sini, 'Enable Feature' adalah label yang akan ditampilkan bersama dengan Toogle, dan $isToggled adalah binding ke nilai boolean yang akan menentukan apakah toggle sedang aktif atau tidak.")
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    /// C.
                    Text("Picker").font(.title).fontWeight(.bold)
                    Text("Picker adalah kontrol UI yang memungkinkan user untuk memilih satu nilai dari beberapa opsi yang tersedia. Dalam SwiftUI, picker digunakan untuk menyediakan antarmuka pengguna yang interaktif untuk memilih nilai dari serangkaian opsi yang ada.")
                    Text("VStack").font(.title2).fontWeight(.semibold)
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    Picker("Choose on option", selection: $selectedOptionIndex) {
                        ForEach(0 ..< options.count) {
                            Text(options[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Text("Selected Option: \(options[selectedOptionIndex])")
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    Picker("Choose on option", selection: $selectedOptionIndex) {
                        ForEach(0 ..< options.count) {
                            Text(options[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Text("Selected Option: \(options[selectedOptionIndex])")
                    Text("Pada contoh di atas 'Choose an option' adalah label yang akan ditampilkan bersama dengan Picker, sedangkan selectedOptionIndex adalah binding ke nilai yang dipilih dalam bentuk index dari opsi-opsi yang tersedia.")
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    /// D.
                    Text("Picker").font(.title).fontWeight(.bold)
                    Text("Picker adalah kontrol UI yang memungkinkan user untuk memilih satu nilai dari beberapa opsi yang tersedia. Dalam SwiftUI, picker digunakan untuk menyediakan antarmuka pengguna yang interaktif untuk memilih nilai dari serangkaian opsi yang ada.")
                    Text("VStack").font(.title2).fontWeight(.semibold)
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    Picker("Choose on option", selection: $selectedOptionIndex) {
                        ForEach(0 ..< options.count) {
                            Text(options[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Text("Selected Option: \(options[selectedOptionIndex])")
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    Picker("Choose on option", selection: $selectedOptionIndex) {
                        ForEach(0 ..< options.count) {
                            Text(options[$0])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Text("Selected Option: \(options[selectedOptionIndex])")
                    Text("Pada contoh di atas 'Choose an option' adalah label yang akan ditampilkan bersama dengan Picker, sedangkan selectedOptionIndex adalah binding ke nilai yang dipilih dalam bentuk index dari opsi-opsi yang tersedia.")
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    /// E.
                    Text("Handling interaksi user dan data Binding").font(.title).fontWeight(.bold)
                    Text("Dalam pengembangan aplikasi, menangani interaksi user dan data binding adalah aspek penting untuk memastikan pengalaman user yang responsif dan berinteraksi. Dalam SwiftUI, kita dapat dengan mudah menangani interaksi user dan data binding menggunakan berbagai kontrol UI dan modifier yang disediakan. Berikut cara-cara untuk menangani interaksi user:")
                    /// E.1
                    Text("Actions Modifier").font(.title2).fontWeight(.semibold)
                    Text("Kita dapat menambahkan modifier actions seperti .onTapGesture atau .onTap ke tampilan untuk menangani interaksi user seperti ketika tampilan diklik.")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    Text("Tap Me")
                        .onTapGesture {
                            // handle user tap here
                        }
                    """)
                    /// E.2
                    Text("State Modifier").font(.title2).fontWeight(.semibold)
                    Text("Properti @State digunakan untuk mengelola state lokal dalam sebuah view. Ketika kita menandai sebuah properti dengan @State , SwiftUI akan secara otomatis memantau perubahan pada nilai tersebut dan merender ulang view jika terjadi perubahan. Sebelumnya properti udah sering digunakan dari awal materi ini untuk mengelola data binding dari kontrol UI.")
                    Text("Contoh:").fontWeight(.semibold)
                    CodeSnippetView(code: """
                    ForEach(notes, id: .self) { note in
                        Text(note)
                    }
                    .onDelete {indicates in
                        notes.remove(atOffsets: indicates)
                    }
                    List {
                        ForEach(notes, id: \\.self) { note in
                            Text(note)
                        }
                        .onDelete {indicates in
                            notes.remove(atOffsets: indicates)
                        }
                    }.frame(height: notes.isEmpty ? 0 : 150)
                    """)
                    Text("Hasilnya:").fontWeight(.semibold)
                    TextField("Add a new note", text: $newNote)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Button("Add Note") {
                        if !newNote.isEmpty {
                            notes.append(newNote)
                            newNote = ""
                        }
                    }.padding()
                    List {
                        ForEach(notes, id: \.self) { note in
                            Text(note)
                        }
                        .onDelete { indicates in
                            notes.remove(atOffsets: indicates)
                        }
                    }.frame(height: notes.isEmpty ? 0 : 150)
                    Text("Pada contoh di atas, user dapat menambahkan note baru menggunakan text field dan tombol \"Add Note\". Note baru ditambahkan ke daftar dan ditampilkan dalam List. User juga dapat menghapus note dengan menggeser ke dari kanan ke kiri pada note yang ada di List.")
                }
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    /// F.
                    Text("Tambahan").font(.title).fontWeight(.bold)
                    /// F.1
                    Text("Beberapa hal yang penting mengenai @State :").font(.title2).fontWeight(.semibold)
                    Text("1. Penanda perubahan state: Properti yang ditandai dengan @State merupakan penanda bahwa nilai dari properti tersebut dapat berubah. Ketika nilai berubah, SwiftUI akan secara otomatis memperbarui UI yang terkait dengan properti tersebut.")
                    Text("2. Hanya untuk view spesifik: @State digunakan untuk menyimpan state lokal yang hanya relevan untuk satu view tertentu. Properti yang ditandai dengan @State akan di-reset ke nilai awalnya setiap kali view tersebut dirender ulang.")
                    Text("3. Hanya digunakan pada struct : @State hanya dapat digunakan pada stuct karena SwiftUI akan mengelola state lokal ini secara internal dengan menggunakan konsep boxed value. Hal ini memungkinkan properti @State untuk berubah tanpa mengubah identitas struktur view.")
                    Text("4. Penggunaan dalam modifier dan binding: Properti yang ditandai dengan @State sering diguunakan dalam modifier seperti @Binding , @ObservedObject , dan @EnvironmentObject untuk mengikat dan memantau nilai state antar view.")
                    Link(destination: URL(string: "https://hutomosaktikartiko.medium.com/30daysofswiftui-day-3-building-dynamic-user-interactions-with-swiftui-controls-806a64ab3c13")!) {
                        Image(systemName: "safari.fill").font(.title).fontWeight(.bold).foregroundColor(.gray)
                    }
                }
            }.padding()
        }.navigationBarTitle(Text("Day 3"))
    }
}
