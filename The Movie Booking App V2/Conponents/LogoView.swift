//
//  LogoView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/6/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        ZStack{
            Image("C")
                .resizable()
                .frame(width: MARGIN_LOGO_WIDTH,height: MARGIN_LOGO_HEIGHT)
           
            
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
