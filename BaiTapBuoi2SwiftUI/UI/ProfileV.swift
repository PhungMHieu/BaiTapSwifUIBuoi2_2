//
//  ProfileV.swift
//  BaiTapBuoi2SwiftUI
//
//  Created by iKame Elite Fresher 2025 on 11/7/25.
//

import SwiftUI
//Struct metric
struct ProfileV: View {
    var body: some View {
        var metrics: [(String, String, String)] = [
            ("80", "Kg", "Weight"),
            ("180", "Cm", "Height"),
            ("28","","Age"),
            ("Male","","Gender")
        ]
//        Rectangle().fill(.backgroundTrang2)
        ZStack {
            Rectangle().fill(.backgroundTrang2)
            VStack {
//                Spacer()
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 108)
                    .foregroundColor(.colorPrimary)
                    .padding(.top,24)
                Text("John Weak")
                    .font(.custom("SF-PRO", size: 36))
                    .foregroundColor(.neutral15)
                VStack(){
                    Text("Your bmi:")
                        .font(.custom("SF-Pro-Text-Bold", size: 16))
                        .foregroundColor(.neutral1)
                        .padding(.top)
                    Text("23.5")
                        .font(.custom("SF-PRO", size: 64))
                        .foregroundColor(.good)
                    //                    .padding(.bottom)
                    VStack {
                        Divider()
                            .padding(.horizontal,63)
//                        GeometryReader{ geo in
                        HStack {
                            ForEach(Array(metrics.enumerated()), id: \.offset) { index, metric in
                                MetricV(value: metric.0, unit: metric.1, title: metric.2)
                            }
                        }
                        .padding()
//                        }
                    }
                    .frame(maxWidth: .infinity)
                }
                .background(.neutral5)
                .cornerRadius(20)
                .padding()
                
                //            .padding(.t)
                Spacer()
                Button(action: {
                }, label: {
                    Text("Edit").font(.custom("SF-Pro-Text-Bold", size: 18))
                        .padding(.horizontal,154)
                        .padding(.vertical, 14)
                })
                .background(.colorPrimary)
                .foregroundColor(.neutral5)
                .tint(.accentNormal)
                .cornerRadius(16)
                .padding()
            }
        }
//        .padding(.top,100)
//        Spacer()
    }
}

#Preview {
    ProfileV()
}
