//
//  CensorOrReleaseView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct CensorOrReleaseView: View {
    var body: some View {
        HStack{
            Spacer()
            CensorReleaseOrDetailView(lable: "Censor Rating",value: "U/A")
            Spacer()
            CensorReleaseOrDetailView(lable: "Release Date",value: "May 8th,2022")
            Spacer()
            CensorReleaseOrDetailView(lable: "Duration",value: "2hr 15min")
            Spacer()
        }.padding(.top,38)
    }
}

struct CensorOrReleaseView_Previews: PreviewProvider {
    static var previews: some View {
        CensorOrReleaseView()
    }
}
