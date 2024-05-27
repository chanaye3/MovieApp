//
//  ViewingTypeItemView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/21/23.
//

import SwiftUI

struct ViewingTypeItemView: View {
    var viewType : String = ""
    var body: some View {
        Text(viewType)
            .foregroundColor(.white)
            .font(.system(size: 16))
            .fontWeight(.bold)
            .padding(EdgeInsets(top: 5, leading: 13, bottom: 5, trailing: 13))
            .background(.gray)
            .cornerRadius(5)
            .overlay(RoundedRectangle(cornerRadius: 5)
                .stroke(.white,lineWidth: 1)
            )
    }
}

struct ViewingTypeItemView_Previews: PreviewProvider {
    static var previews: some View {
        ViewingTypeItemView()
            
    }
}
