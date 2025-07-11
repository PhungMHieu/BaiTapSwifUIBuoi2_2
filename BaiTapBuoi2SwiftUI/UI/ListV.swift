//
//  ListV.swift
//  BaiTapBuoi2SwiftUI
//
//  Created by Admin on 9/7/25.
//

import SwiftUI

struct ListV: View {
    var data: [String] = [
        ("Nguyen Van A"),
        ("Nguyen Van B"),
        ("Nguyen Van C")
    ]
    var body: some View {
        List{
            Section(header: Text("J")) {
                ForEach(data,id: \.self) { item in
                    UserItemV()
                        .frame(maxWidth: .infinity, alignment: .leading) // nội dung tràn ngang
//                        .listRowInsets(EdgeInsets())                     // xoá padding mặc định
                        .listRowBackground(Color.clear)
                        .listRowSeparator(.hidden)
                    
                }
            }
        }
        .listStyle(.grouped)                 // tránh paddin}
    }
}

#Preview {
    ListV()
}

//        List{
//            UserItemV()
//            UserItemV()
//            UserItemV()
//        }
//        List(data, id: \.self) {item in
//            UserItemV()
//                .listRowBackground(Color.clear)
//                .listRowSeparator(.hidden)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .listRowInsets(EdgeInsets())
////                .padding()
////                .frame()
////                .background(.neutral5)
////                .cornerRadius(10)
////                .padding()
//        }
//        .scrollContentBackground(.hidden)
////        .lineLimit(.none)
//        .background(.colorPrimary)
////        .padding()
