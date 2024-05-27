//
//  TCPTextView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/7/23.
//

import SwiftUI

struct TCPTextView: View {
    var body: some View {
        Text(LABLE_BY_CLICKING_I_ACCEPT_THE_TERMS_AND_CONDITIONS_AND_PRIVACY_POLICY)
            .foregroundColor(Color(TCP_COLOR))
            .font(.system(size: TEXT_SMALL))
            .padding(.top,MARGIN_PRIVACY)
    }
}


struct TCPTextView_Previews: PreviewProvider {
    static var previews: some View {
        TCPTextView()
    }
}
