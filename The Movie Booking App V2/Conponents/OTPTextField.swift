//
//  OTPTextField.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/7/23.
//

//import SwiftUI
//
//struct OTPTextField: View {
//
//    @State var OTPName : String = ""
//    @State var OTPName1 : String = ""
//    @State var OTPName2 : String = ""
//    @State var OTPName3 : String = ""
//    @State var OTPName4 : String = ""
//    @State var OTPName5 : String = ""
//
//
//
//
//
//    var body: some View {
//        ZStack{
//            Color(.black)
//            HStack{
//                ForEach(0..<1,id: \.self
//                ){ _ in
//
//
//                        TextField("", text: $OTPName)
//                            .padding(.all)
//                            .font(.system(size: TEXT_REGULAR))
//                            .fontWeight(.medium)
//                            .frame(width: MARGIN_XXLARGE+2,height: MARGIN_XXLARGE+2)
//                            .background(Color(.white))
//                        .cornerRadius(MARGIN_SMALL)
//                     TextField("", text: $OTPName1)
//                            .padding(.all)
//                            .font(.system(size: TEXT_REGULAR))
//                            .fontWeight(.medium)
//                            .frame(width: MARGIN_XXLARGE+2,height: MARGIN_XXLARGE+2)
//                            .background(Color(.white))
//                        .cornerRadius(MARGIN_SMALL)
//                   TextField("", text: $OTPName2)
//                            .padding(.all)
//                            .font(.system(size: TEXT_REGULAR))
//                            .fontWeight(.medium)
//                            .frame(width: MARGIN_XXLARGE+2,height: MARGIN_XXLARGE+2)
//                            .background(Color(.white))
//                        .cornerRadius(MARGIN_SMALL)
//                    TextField("", text: $OTPName3)
//                            .padding(.all)
//                            .font(.system(size: TEXT_REGULAR))
//                            .fontWeight(.medium)
//                            .frame(width: MARGIN_XXLARGE+2,height: MARGIN_XXLARGE+2)
//                            .background(Color(.white))
//                        .cornerRadius(MARGIN_SMALL)
//                    TextField("", text: $OTPName4)
//                            .padding(.all)
//                            .font(.system(size: TEXT_REGULAR))
//                            .fontWeight(.medium)
//                            .frame(width: MARGIN_XXLARGE+2,height: MARGIN_XXLARGE+2)
//                            .background(Color(.white))
//                        .cornerRadius(MARGIN_SMALL)
//                    TextField("", text: $OTPName5)
//                            .padding(.all)
//                            .font(.system(size: TEXT_REGULAR))
//                            .fontWeight(.medium)
//                            .frame(width: MARGIN_XXLARGE+2,height: MARGIN_XXLARGE+2)
//                            .background(Color(.white))
//                        .cornerRadius(MARGIN_SMALL)
//
////                    if (1 != 0) {
////                        TextField("", text: $OTPName)
////                    }else if(2 != 0){
////                        TextField("", text: $OTPName1)
////                    }
////                    else if(2 != 0){
////                        TextField("", text: $OTPName2)
////                    }else if(2 != 0){
////                        TextField("", text: $OTPName3)
////                    }else if(2 != 0){
////                        TextField("", text: $OTPName4)
////                    }else{
////                        TextField("", text: $OTPName5)
////                    }
//
//                }
//
//
//            }
//        }
//
//    }
//}
//
//struct OTPTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        OTPTextField()
//    }
//}

import SwiftUI

struct OTPTextField: View {
    @State private var otpEntries: [String] = Array(repeating: "", count: 6)
    @FocusState private var focusedField: Int?

    var body: some View {
        ZStack {
            Color.black
            HStack {
                ForEach(0..<otpEntries.count, id: \.self) { index in
                    TextField("", text: Binding(
                        get: {
                            otpEntries[index]
                        },
                        set: { newValue in
                            let cleanedValue = newValue.prefix(1)
                            otpEntries[index] = String(cleanedValue)
                            
                            if cleanedValue.isEmpty {
                                if index > 0 {
                                    focusedField = index - 1
                                }
                            } else if index < otpEntries.count - 1 {
                                focusedField = index + 1
                            } else {
                                focusedField = nil
                            }
                        }
                    ))
                    .padding(.all)
                    .font(.system(size: TEXT_REGULAR))
                    .fontWeight(.medium)
                    .frame(width: MARGIN_XXLARGE + 2, height: MARGIN_XXLARGE + 2)
                    .background(Color.white)
                    .cornerRadius(MARGIN_SMALL)
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                    .focused($focusedField, equals: index)
                }
            }
        }
        .onAppear {
            focusedField = 0
        }
    }
}

struct OTPTextField_Previews: PreviewProvider {
    static var previews: some View {
        OTPTextField()
    }
}

