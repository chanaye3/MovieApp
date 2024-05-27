//
//  OTPView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/6/23.
//

import SwiftUI

struct OTPView: View {
    @Environment(\.dismiss) var dismiss
//   @Binding var isPresenteBinding : Bool
    var onTapBack : () -> Void = {}
    
    var body: some View {
        
        
       
        
        
        NavigationStack {
            ZStack(alignment: .top){
                        //backgroundColour
                        Color("primary_color")
                    
                    
                       
                            
                    ScrollView(.vertical) {
                            
                           
                            VStack(spacing:0.0){
                                VStack{
                                    //logoView
                                    LogoView()
                                }
                                //text
                                OTPCodeView()
                                
                                // OTP CODE
                                VStack(alignment: .center){
                                    //enter text
                                    EnterOTPView()
                                    //CODE
                                   
                                        OTPTextField()
                                    //text
                                    ResendCodeView()
                                    
                                    //ConfirmBTN
                                    ConfirmBtnView()
                                    //TCPTview
                                    TCPTextView()
                                }
                                
                            }.padding(EdgeInsets(top: MARGIN_LOGO, leading: MARGIN_XLARGE+2, bottom: 0, trailing: MARGIN_XLARGE+2))
                                
                        }
                    BackButtonView(){
                        dismiss()
                        
                    }
                }.edgesIgnoringSafeArea([.top,.bottom])
        }                .navigationBarHidden(true)

        
        
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}

struct BackButtonView: View {
    var onTapBack : () -> Void = {}
    var body: some View {
        HStack(alignment:  .top){

                Image(systemName: IC_CHEVRON_LEFT)
                
                    .foregroundColor(.gray)
                    .frame(width: MARGIN_CARD_MEDIUM_2+1,height: MARGIN_MEDIUM_3+2)
                    .fontWeight(.bold)
                    .padding(EdgeInsets(top: MARGIN_RECTANGLE-7, leading: MARGIN_MEDIUM_3+2, bottom: 0, trailing: 0))
                
                                    .onTapGesture {
                                        onTapBack()}

            Spacer()
        }
    }
}

struct OTPCodeView: View {
    var body: some View {
        VStack(spacing:0.0){
            Text(LABLE_WEVE_SENT_OTP_CODE)
                .font(.system(size: TEXT_REGULAR_3X+2))
                .foregroundColor(.white)
                .fontWeight(.medium
                )
            Text(LABLE_PLEASE_ENTER_6_DIGIT_OTP_CODE_THAT_SEND_TO_YOU_PHONE_NUMBER)
                .foregroundColor(.gray)
                .font(.system(size: TEXT_REGULAR))
                .multilineTextAlignment(.center)
                .padding(.top,MARGIN_MEDIUM+2)
        }.padding(.top,MARGIN_LOGO-2)
    }
}

struct EnterOTPView: View {
    var body: some View {
        HStack{
            Text(LABLE_ENTER_OTP_CODE)
                .foregroundColor(.gray)
                .font(.system(size: TEXT_REGULAR))
                .padding(.top,MARGIN_OTP)
            Spacer()
        }
    }
}

struct ResendCodeView: View {
    var body: some View {
        HStack(alignment: .center){
            Text(LABLE_DONT_RECEIVE_OTP)
                .foregroundColor(.white)
                .font(.system(size: TEXT_REGULAR_2X+2))
            
            Text("Resend Code")
                .foregroundColor(Color(C_COLOR))
                .font(.system(size: TEXT_REGULAR_2X+2))
            
        }.padding(.top,MARGIN_MEDIUM_3*2)
    }
}

struct ConfirmBtnView: View {
    var body: some View {
        NavigationLink(destination: {
            LocationScreen()
        }){

            Text(LABLE_CONFIRM_OTP)
            .font(.system(size: TEXT_REGULAR_2X))
            .foregroundColor(.black)
            .frame(width: MARGIN_BTN_WIDTH-5,height: MARGIN_XXLARGE+2)
            .background(Color(C_COLOR))
            .cornerRadius(MARGIN_MEDIUM)
            .padding(.top,MARGIN_MEDIUM_3*2)

        }
//        .navigationDestination(for: String.self, destination: { otp in
//          
//        })
    }
}
