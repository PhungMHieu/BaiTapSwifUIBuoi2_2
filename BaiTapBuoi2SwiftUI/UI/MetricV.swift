//
//  MetricV.swift
//  BaiTapBuoi2SwiftUI
//
//  Created by iKame Elite Fresher 2025 on 11/7/25.
//

import SwiftUI

struct MetricV: View {
    var value: String
    var unit: String
    var title: String
    var body: some View {
        
        VStack {
            HStack{
                Text(value)
                    .font(.custom("SF-Pro-Text-Bold", size: 20))
                    .foregroundColor(.good)
                Text(unit)
                    .font(.custom("SF-Pro-Text-Bold", size: 20))
                    .foregroundColor(.good)
            }
            Text(title)
                .font(.custom("SF-Pro-Text-Bold", size: 14))
                .foregroundColor(.neutral3)
        }
    }
}

#Preview {
    MetricV(value: "80", unit: "Kg", title: "Weight")
}
