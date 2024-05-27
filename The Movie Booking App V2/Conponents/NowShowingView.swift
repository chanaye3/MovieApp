//
//  NowShowingView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/16/23.
//

import SwiftUI

struct NowShowingView: View {
    @State var isNowShowing : Bool = false
    let column = [
        GridItem(.fixed(180)),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: column){
                ForEach(0..<10,id: \.self) { Int in
                    MovieItemsView()
                    
                }
            }
        }.padding(.horizontal)
    }
}

struct NowShowingView_Previews: PreviewProvider {
    static var previews: some View {
        NowShowingView()
    }
}

struct MovieItemsView: View {
    var body: some View {
        VStack{
            //Image
            Image("ic_movie")
                .resizable()
                .frame(width: 171,height: 212)
            //Text
            TitleTextAndRateView()
            //text
            UAView()
        }.frame(width: 171,height: 279)
    }
}



