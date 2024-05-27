//
//  CensorReleaseOrDurationView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct CensorReleaseOrDetailView: View {
    var lable : String = ""
    
    var value : String = ""
    var body: some View {
        VStack(spacing:0.0){
            Text(lable)
                .font(.system(size: 12))
                .fontWeight(.heavy)
                .foregroundColor(.white)
            Text(value)
                .font(.system(size: 14))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.top,10)
            
        }
    }
}


struct CensorReleaseOrDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CensorReleaseOrDetailView()
    }
}
