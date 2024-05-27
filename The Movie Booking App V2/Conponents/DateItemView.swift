//
//  DateItemView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/21/23.
//

import SwiftUI

struct DateItemView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .top)){
            //background
            DateBackground()
            VStack(spacing:0.0){
                Text("Today")
                    .font(.system(size: 14))
                    .fontWeight(.heavy)
                    .padding(.top,20)
                Text("May")
                    .font(.system(size: 14))
                    .fontWeight(.heavy)
                    .padding(.top,7)
                Text("8")
                    .font(.system(size: 14))
                    .fontWeight(.heavy)
                    .padding(.top,5)
            }
            
        }
    }
}

struct DateItemView_Previews: PreviewProvider {
    static var previews: some View {
        DateItemView()
    }
}
