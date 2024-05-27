//
//  AccountSetupView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/6/23.
//

import SwiftUI

struct LoginScreenView: View {
    var body: some View {
        
        
            NavigationStack {
                ZStack {
                        
                            //Background
                            Color(PRIMARY_COLOUR)
                            VStack(alignment: .center,spacing: 0.0){
                                //logo
                                LogoView()
                                
                                //VerifyPhoneNumber
                                VerifyYourPhoneNumberView()
                                
                                //CountryCodeView
                                CountryCodeAndVerifyAndGoogleView()
                                
                                
                                Spacer()
                                
                            }.padding(.top,MARGIN_LOGO)
                        
                }        .edgesIgnoringSafeArea([.top,.bottom])
                    .background(Color(PRIMARY_COLOUR))
                    
            }
            .frame(height: UIScreen.main.bounds.height)
            

        
    }
}

struct LoginScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreenView()
    }
}
//VERIFY PHONE NUMBER
struct VerifyYourPhoneNumberView: View {
    var body: some View {
        VStack(spacing: 0.0){
            Text(LABLE_VERIFY_YOUR_PHONE_NUMBER)
                .foregroundColor(Color(.white))
                .font(.system(size: TEXT_REGULAR_3X))
                .fontWeight(.medium)
                .padding(.top,MARGIN_LOGO)
            
            Text(LABLE_WE_WILL_SEND_6_DIGIT_SMS_CODE_TO_VERIFY_YOUR_PHONE_NUMBER)
                .foregroundColor(.gray)
                .font(.system(size: TEXT_REGULAR))
                .multilineTextAlignment(.center)
                .padding(.top,MARGIN_MEDIUM+2)
        }
    }
}

struct CountryCodeAndVerifyAndGoogleView : View {
//    @State var isPresent : Bool = false
   
    var body: some View {
                    ScrollView(.vertical) {
                
                
                VStack(spacing: 0.0){
                    
                    //COUNTRY CODE
                    CountryCodeView()
                    
                    //NUMBER & UNDERLIE
                    NumberAndUnderlineView( placeholderColor: .gray)
                    
                    //btnPh
                    BtnPhoneNumber()
                    //OR
                    UnderlineAndOrView()
                    
                    //BTN GOOGLE
                    BtnGoogleView()
                    
                    
                    //PRIVACY
                    TCPTextView()
                    
                }.padding(EdgeInsets(top: MARGIN_LOGO, leading: MARGIN_XLARGE+2, bottom: 0, trailing: MARGIN_XLARGE+2))
            }
        }
//                .fullScreenCover(isPresented: $isPresent)  {
//                    OTPView(isPresenteBinding: self.$isPresent)
//                }
        
            
    
}



struct CountryCodeView: View {
    var body: some View {
        HStack{
            Text(LABLE_COUNTRY_CODE)
                .foregroundColor(Color(.gray))
                .font(.system(size: MARGIN_CARD_MEDIUM_2))
                .padding(.bottom)
            
            Spacer()
        }
    }
}




struct NumberAndUnderlineView: View {
    @State var textFieldName : String = ""
    var placeholderColor: Color
    
    var body: some View {
        HStack(alignment: .center,spacing: MARGIN_MEDIUM_3){
            VStack(alignment: .leading,spacing: 0.0){
                HStack(spacing: 0.0){
                    LocalCodeView()
                        .font(.system(size: TEXT_REGULAR_2X))
                        .foregroundColor(Color(.white))
               
                }
                
            }
            
            //TEXT & UNDRLINE
            VStack(alignment: .leading,spacing: 0.0){
                ZStack(alignment: .leading){
//                    Text("Phone Number")
//                        .foregroundColor(.gray.opacity(0.3))
                    TextField(LABLE_PHONE_NUMBER, text: $textFieldName)

                        .textFieldStyle(.plain)
                        .font(.system(size: TEXT_REGULAR_2X))
                        .frame(height: MARGIN_MEDIUM_3-1)
                        .foregroundColor(.white)
                    
                        
                        
                }
                
                
                
                
                
                Rectangle()
                    .frame(height: MARGIN_SMALL-2)
                    .foregroundColor(Color(.gray))
                    .padding(.top,MARGIN_MEDIUM)
                
            }
            
            
        }
    }
}





struct UnderlineAndOrView: View {
    var body: some View {
        HStack(spacing: MARGIN_MEDIUM_3){
            Rectangle()
                .frame(height: MARGIN_SMALL-2)
                .foregroundColor(Color(DIVIDER_COLOR))
            Text(LABLE_OR)
                .foregroundColor(.white)
                .font(.system(size: TEXT_REGULAR_2X))
            Rectangle()
                .frame(height: MARGIN_SMALL-2)
                .foregroundColor(Color(DIVIDER_COLOR))
        }.padding(.top,MARGIN_LARGE+1)
    }
}

struct BtnGoogleView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(spacing: 0.0){
                Image(IC_GOOGLE_LOGO)
                    .resizable()
                    .frame(width: MARGIN_LARGE+1,height: MARGIN_LARGE+1)
                Text(LABLE_CONTINUE_WITH_GOOGLE)
                    .foregroundColor(Color(PRIMARY_COLOUR))
                    .font(.system(size: TEXT_REGULAR_2X))
                    .padding(.leading,MARGIN_MEDIUM+2)
                
            }
            
        }).frame(width: MARGIN_BTN_WIDTH,height: MARGIN_XXLARGE+2)
            .background(Color(.white))
            .cornerRadius(MARGIN_MEDIUM+2)
            .padding(.top,MARGIN_LARGE+1)
        
    }
}

struct BtnPhoneNumber: View {
    
    var body: some View {

        NavigationLink(destination:(OTPView())){
            Text(LABLE_VERIFY_YOUR_PHONE_NUMBER)
            .font(.system(size: TEXT_REGULAR_2X))
            .frame(width: MARGIN_BTN_WIDTH,height: MARGIN_XXLARGE+2)
            .background(Color(C_COLOR))
            .cornerRadius(MARGIN_MEDIUM)
            .foregroundColor(Color(PRIMARY_COLOUR))
            .padding(.top,MARGIN_XXLARGE+2)
        }
//        .navigationDestination(for: String.self,
//                                destination:{ ph in
//            if ph == "Ph"{
//                OTPView()
//            }
//        }
//        )
        
        
    }
}
