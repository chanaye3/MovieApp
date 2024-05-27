//
//  DateBackground.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/21/23.
//

import SwiftUI

struct DateBackground : View {
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            //background
            Rectangle()
                .frame(width: 71,height: 95)
                .foregroundColor(Color("color_date_background"))
                .cornerRadius(8)
            //tapView
            Rectangle()
                .frame(width: 22,height: 5)
                .cornerRadius(2.5)
                .padding(.bottom,85)
            //semiCircle
            HStack{
                Circle()
                    .frame(width: 20,height: 12)
                Spacer()
                Circle()
                    .frame(width: 20,height: 12)
            }.frame(width: 91)
                .padding(.bottom,14)
        }
    }
}

struct DateBackground_Previews: PreviewProvider {
    static var previews: some View {
        DateBackground()
    }
}
