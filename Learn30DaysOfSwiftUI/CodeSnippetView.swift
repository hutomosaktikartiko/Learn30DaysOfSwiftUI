//
//  CodeSnippetView.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 11/03/24.
//

import SwiftUI

struct CodeSnippetView: View {
    var code: String

    var body: some View {
        Text(
            code
        )
        .font(
            .system(
                .body,
                design: .monospaced
            )
        )
        .foregroundColor(
            .white
        )
        .padding()
        .background(
            Color.gray
        )
        .cornerRadius(
            8
        )
    }
}
