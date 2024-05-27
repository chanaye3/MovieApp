//
//  TitleTextAndRateView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/18/23.
//

import SwiftUI

struct TitleTextAndRateView: View {
    var body: some View {
        HStack{
            Text("Venom II")
                .foregroundColor(.white)
                .fontWeight(.medium)
                .font(.system(size: 12))
            Spacer()
            Image("ic_imdb")
                .resizable()
                .frame(width: 32,height: 20)
            Text("9.0")
                .font(.system(size: 12))
                .italic()
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }.padding([.leading,.trailing],7)
    }
}
struct TitleTextAndRateView_Previews: PreviewProvider {
    static var previews: some View {
        TitleTextAndRateView()
    }
}
