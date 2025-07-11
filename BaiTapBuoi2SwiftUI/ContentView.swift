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
//import SwiftUI
//
//struct UserView: View {
//    var name: String
//    var weight: String
//    var height: String
//
//    var body: some View {
////        HStack(alignment: .center, spacing: 16){
//        HStack{
//                Image(systemName: "person.circle.fill")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.blue)
////            .frame(width: 60) // bạn có thể chỉnh lại kích thước
////            .padding(.vertical, 8)
////            .padding(.horizontal,45)
//            VStack(alignment: .leading, spacing: 8) {
//                Text(name)
//                    .font(.headline)
//                HStack {
//                    Text("Weight: \(weight)")
//                    Text("Height: \(height)")
//                }
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//            }
////            .padding(.vertical, 8)
//        }
////        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .padding()
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        UserView(name: "John Doe", weight: "86 kg", height: "180 cm")
////            .frame(height: 100) // chiều cao mẫu
////        UserView(name: "John Doe", weight: "86 kg", height: "180 cm")
//////            .frame(height: 100) // chiều cao mẫu
////        UserView(name: "John Doe", weight: "86 kg", height: "180 cm")
////            .frame(height: 100) // chiều cao mẫu
//    }
//}
//
//#Preview {
//    ContentView()
////    UserView("fasd","fasdfa","afas")
//}
import SwiftUI
struct ContentView: View {
    @State var information: Information = Information()
    @State var displayInfo: Information? = nil
    @State var widthOfV: CGFloat = 0
    var fields: [(String, String, Binding<String>)] {[
        ("First name", "Enter first name", $information.firstName.string),
        ("Last name", "Enter last name", $information.lastName.string),
        ("Weight", "Enter weight", $information.weight.string),
        ("Height", "Enter height", $information.height.string)
    ]}
    var body: some View {
        //        var nameField
        
        VStack (spacing: 21, content: {
            //            var informationView = InformationView(information: information)
            HStack(spacing: 12) {
                ForEach(0..<2) { index in
                    NameView(firstName: fields[index].2, title: fields[index].0, placeholder: fields[index].1)
                }
            }
            
            //            .padding(.top, 24)
            GenderSelector(selectedGender: $information.gender.string)
            HStack (spacing: 12){
                ForEach(2..<4) { index in
                    //                    var weightString = String(information.weight)
                    NameView(firstName: fields[index].2, title: fields[index].0, placeholder: fields[index].1)
                }
            }
//            .padding(.horizontal, 20)
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Complete")
                    //.padding()
            })
//            .frame(width: 343, height: 56)
            .frame(maxWidth: .infinity, maxHeight: 56)
            .background(Color.colorPrimary)
//            .padding(.bottom,16)
//            .padding()
            .foregroundColor(Color.white)
            .cornerRadius(10)
            .padding(.bottom, 16)
        })
        .padding(.top, 24)
        .padding(.horizontal, 20.0)
        .background(.backgroundTrang2)
    }
}
struct GenderSelector: View {
    @Binding var selectedGender: String
    let genders = ["Nam", "Nữ"]
    var body: some View {
        
        //        Picker
        Picker("GenderSelector",selection: $selectedGender) {
            ForEach(genders, id: \.self){ gender in
                Text(gender).tag(gender)
            }
        }
        .pickerStyle(.segmented)
    }
    
}

struct HeightWeightView: View {
    @Binding var weightValue: String
    var title: String
    var placeholder: String
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
            TextField(placeholder, text: $weightValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}
#Preview {
    ContentView()
    //    ContentView().previewLayout(.fixed(width: 568, height: 320))
}
extension Binding where Value == Double{
    var string: Binding<String>{
        Binding<String>(
            get: {
                "\(self.wrappedValue)"
            }, set: {
                self.wrappedValue = Double($0) ?? 0
            }
        )
    }
}
extension Binding where Value == String?{
    var string: Binding<String>{
        Binding<String>(
            get: {
                if let val =  self.wrappedValue{
                    return val
                }else{
                    return ""
                }
            }, set: {
                self.wrappedValue = $0
            }
        )
    }
}
extension Binding where Value == Double?{
    var string: Binding<String>{
        Binding<String>(
            get: {
                if let val = self.wrappedValue{
                    return String(val)
                }else{
                    return ""
                }
            }, set: {
                if let v = Double($0){
                    self.wrappedValue = v
                }else{
                    self.wrappedValue = nil
                }
            }
        )
    }
}
