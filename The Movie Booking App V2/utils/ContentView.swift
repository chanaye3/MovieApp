//
//  ContentView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/5/23.
//

import SwiftUI

struct ContentView: View {

    @State var isActive : Bool = false
    var body: some View {
        ZStack {
            //backgroundColour
            Color(PRIMARY_COLOUR)
            //Logo
            SplashLogoView()
                .onAppear(){
                DispatchQueue.main.asyncAfter(deadline: .now()+Double(2)){ self.isActive = true}
            }
        }.edgesIgnoringSafeArea([.bottom,.top])
            .fullScreenCover(isPresented: $isActive) {
                LoginScreenView()
            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct SplashLogoView : View {
    var body: some View {
        VStack(spacing:MARGIN_MEDIUM_2){
            
            //Logo
            LogoView()
            
            //Text
            HStack(spacing: MARGIN_SMALL){
                Text(IC_C)
                    .font(.system(size: TEXT_REGULAR_3X))
                    .foregroundColor(Color(C_COLOR))
                    .fontWeight(.bold)
                Text(LABLE_CINEMA)
                    .font(.system(size: TEXT_REGULAR_2X))
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    
                
            }.frame(width: MARGIN_LOGO+6,height: MARGIN_LARGE)

            
            
        }
    }
}
