//
//  ContentView.swift
//  BaiTapBuoi2SwiftUI
//
//  Created by Admin on 9/7/25.
//

//import SwiftUI
//
//struct ContentView: View {
//    
//    var body: some View {
//        let lst: [String] = ["A", "B", "C", "D", "E"]
////        Lis
//        List(lst,id: \.self) { item in
//            VStack{
//                Text(item)
//                Text("Hello, World!")
//            }
//        }
//    }
//}
//
//#Preview {
//    ContentView()
//}
import SwiftUI

struct UserView: View {
    var name: String
    var weight: String
    var height: String

    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            GeometryReader { geo in
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.height) // giữ tỷ lệ vuông theo chiều cao
                    .foregroundColor(.blue)
            }
//            .frame(width: 60) // bạn có thể chỉnh lại kích thước
//            .padding(.vertical, 8)
//            .padding(.horizontal,45)
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.headline)
                HStack {
                    Text("Weight: \(weight)")
                    Spacer()
                    Text("Height: \(height)")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
//            .padding(.vertical, 8)
        }
        .padding()
    }
}

struct ContentView: View {
    var body: some View {
        UserView(name: "John Doe", weight: "86 kg", height: "180 cm")
            .frame(height: 100) // chiều cao mẫu
    }
}

#Preview {
    ContentView()
}
