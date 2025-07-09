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
//        List{
//            UserItemV()
//            UserItemV()
//            UserItemV()
//        }
        List(data, id: \.self) {item in
            UserItemV()
        }
    }
}

#Preview {
    ListV()
}
