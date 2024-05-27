//
//  TitleAndGenreView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct TitleAndGenreView: View {
    let column = [GridItem(.flexible(minimum: 80),spacing: 4),
                  GridItem(.flexible(minimum: 80),spacing: 4),
                  GridItem(.flexible(minimum: 80),spacing: 4),]
    
    var body: some View {
        VStack(alignment: .leading,spacing: 12){
            //TitleAndRateView
            HStack{
                Text("Venom II")
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .font(.system(size: 16))
                
                Image("ic_imdb")
                    .resizable()
                    .frame(width: 44,height: 28)
                Text("9.0")
                    .font(.system(size: 16))
                    .italic()
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
            }
            
            
            Text("2D,3D,3D IMAX")
                .foregroundColor(.white)
                .fontWeight(.medium)
                .font(.system(size: 16))
            
            //genre
            LazyVGrid(columns: column,alignment: .leading,spacing: 4){
                
                    GenereView(genreName: "action")
                    GenereView(genreName: "Adventure")
                    GenereView(genreName: "Comedy")
                    GenereView(genreName: "Animation")
                
            }
            
           
        }.padding(EdgeInsets(top: 0, leading: 24, bottom: 4, trailing: 0))
    }
}

struct TitleAndGenreView_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndGenreView()
    }
}
