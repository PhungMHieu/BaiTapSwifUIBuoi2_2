//
//  InputFieldV.swift
//  BaiTapBuoi2SwiftUI
//
//  Created by iKame Elite Fresher 2025 on 11/7/25.
//

import SwiftUI

struct InputFieldV: View {
//    @Binding var firstName: String
    @State var firstName: String = ""
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
//        .cor
        //        .padding(.trailing, 8.0 )
    }
}

#Preview {
//    InputFieldV("First name", "Enter first name")
    InputFieldV(title: "First name", placeholder: "Enter first name")
}
