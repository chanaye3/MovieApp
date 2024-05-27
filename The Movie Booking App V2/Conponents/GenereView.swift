//
//  GenereView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/21/23.
//

import SwiftUI

struct GenereView: View {
    var genreName : String = ""
    var body: some View {
        Text(genreName)
            .font(.system(size: 12))
        
            .fontWeight(.medium)
            .padding(EdgeInsets(top: 5, leading: 8, bottom: 5, trailing: 8))
            .background(Color(C_COLOR))
            .cornerRadius(10)
    }
}

struct GenereView_Previews: PreviewProvider {
    static var previews: some View {
        GenereView()
    }
}
