//
//  UAView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/18/23.
//

import SwiftUI

struct UAView: View {
    var body: some View {
        HStack{
            Text("U/A")
                .font(.system(size: 12))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Circle()
                .frame(width: 5,height: 5)
                .foregroundColor(.white)
            
            Text("2D,3D,3D IMAX")
                .font(.system(size: 10))
                .foregroundColor(.white)
            Spacer()
            
        }
        .padding([.leading,.trailing],7)
    }
}


struct UAView_Previews: PreviewProvider {
    static var previews: some View {
        UAView()
    }
}
