//
//  ExtractView.swift
//  HelloWorld
//
//  Created by iKame Elite Fresher 2025 on 8/7/25.
//
import SwiftUI


struct NameView: View {
    @Binding var firstName: String
    var title: String
    var placeholder: String
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(title)
                .font(.custom("SF-PRO", size: 16))
            TextField(placeholder, text: $firstName)
                .padding()
                .background(.neutral5)
                .cornerRadius(16)
                .font(.custom("SF-PRO", size: 16))
        }
        .background(.backgroundTrang2)
    }
}
