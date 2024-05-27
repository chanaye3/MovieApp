//
//  RegionAndLocationView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct RegionAndLocationView: View {
    var body: some View {
        HStack(spacing: 0.0){
            Image(systemName: IC_LOCATION_FILL)
                .resizable()
                .foregroundColor(.white)
                .frame(width: 16,height: 16)
            
            Text(LABLE_YANGON)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(Font.body.italic())
                .padding(.leading,8)
            
        }
    }
}

struct RegionAndLocationView_Previews: PreviewProvider {
    static var previews: some View {
        RegionAndLocationView()
    }
}
