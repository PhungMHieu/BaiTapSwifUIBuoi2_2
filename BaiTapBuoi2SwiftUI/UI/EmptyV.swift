//
//  EmptyV.swift
//  BaiTapSwiftUi1
//
//  Created by iKame Elite Fresher 2025 on 9/7/25.
//

import SwiftUI

struct EmptyV: View {
    var body: some View {
        var txt: any View {
            Text("hehe")
                .foregroundStyle(Color.colorPrimary)
            
        }
        VStack (spacing: 16){
            Image("empty-box 1")

                    (Text("Empty folder, Tap ")
                     + Text("**\"Add Profile\"** ").foregroundColor(.colorPrimary)
                + Text("\nbutton to create profile now.")
                        .font(.system(size: 18))).lineSpacing(10)
                .multilineTextAlignment(.center)
            
            Button {
                print("Button is tapped")
            } label: {
                Text("Add Profile")
//                    .padding(.horizontal,31.5)
//                    .padding(.vertical, 12.5)
                    .font(.custom("SF-Pro", size: 18))
                    .foregroundStyle(Color.neutral5)
            }
//            .background(.colorPrimary)
//            .frame(maxWidth: .infinity)
//            .background(.red)
            .padding()
            .background(Color.colorPrimary)
            .cornerRadius(16)
//            Text("Hello")
        }
    }
}
#Preview {
    EmptyV()
}
