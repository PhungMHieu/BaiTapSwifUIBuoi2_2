//
//  UserItemV.swift
//  BaiTapBuoi2SwiftUI
//
//  Created by Admin on 10/7/25.
//

import SwiftUI

struct UserItemV: View {
    
    var body: some View {
//        Spacer()
        HStack() {
//            GeometryReader{ geo in
////                Spacer()
//                Image(systemName: "person.circle.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: geo.size.height)
//            }
            HStack{
                Spacer()
                Image(systemName: "person.circle.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame( maxHeight: .infinity)
//                    .frame(width: geo.size.height) // giữ tỷ lệ vuông theo chiều cao
                    .foregroundColor(.blue)
                    .padding(0)
                Spacer()
            }.padding(0)
            VStack(alignment: .leading) {
//                Spacer()
                HStack {
                    Text("John Doe")
                        .font(.headline)
                }
                HStack{
                    ExtractedView(title: "W", value: "86 kg")
                    ExtractedView(title: "H", value: "180 cm")
                }
            }
        }
//        Spacer()
    }
}

#Preview {
    UserItemV()
}

struct ExtractedView: View {
    var title: String
    var value: String
    var body: some View {
        HStack {
            Text(title)
            Text(value)
        }
    }
}
