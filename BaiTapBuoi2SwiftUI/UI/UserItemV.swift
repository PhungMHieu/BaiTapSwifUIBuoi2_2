//
//  UserItemV.swift
//  BaiTapBuoi2SwiftUI
//
//  Created by Admin on 10/7/25.
//

import SwiftUI

struct UserItemV: View {
    
    var body: some View {
        HStack(){
//            Spacer()
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(.mauIconPerson)
                .frame(height: 48)
                .padding(12)
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text("John Doe")
                        .font(.custom("SF-PRO", size: 18))
                        .foregroundColor(.neutral15)
                }
                HStack(spacing: 12){
                    UserStaticView(title: "W:", value: "86 kg")
                    Text("-")
                    UserStaticView(title: "H:", value: "180 cm")
                }.font(.custom("SF-PRO", size: 14))
                    .foregroundColor(.neutral3)
            }
            .padding(12)
            Spacer()
            Image(systemName: "arrowshape.forward.circle.fill")
                .padding()
        }
        .background(.neutral5)
        .cornerRadius(12)
//        .padding(.bottom,12)
//        .frame(width: .infinity)
//        .frame(height: 100)
    }
}

#Preview {
    UserItemV()
}

struct UserStaticView: View {
    var title: String
    var value: String
    var body: some View {
        HStack {
            Text(title)
            Text(value)
        }
    }
}
