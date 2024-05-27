//
//  FacilitiesView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/21/23.
//

import SwiftUI

struct FacilitiesView: View {
    var lable : String = ""
    var image : String  = ""
    
    
    var body: some View {
        HStack(spacing : 6){
            Image(image)
                .resizable()
                .frame(width: 16,height: 16)
                .foregroundColor(.gray)
            Text(lable)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .foregroundColor(.gray)
                
        }
    }
}

struct FacilitiesView_Previews: PreviewProvider {
    static var previews: some View {
        FacilitiesView()
    }
}
