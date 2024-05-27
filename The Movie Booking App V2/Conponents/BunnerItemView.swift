//
//  BunnerSectionAndtemView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/13/23.
//

import SwiftUI

struct BunnerItemView: View {
    var body: some View {
        
        
        
            ZStack(alignment : Alignment(horizontal: .leading, vertical: .top)){
                    Image("kfc_pics")
                        .resizable()
                        .frame(width: 370,height: 170)
                    //gradient
                    LinearGradient(colors: [.clear,.black], startPoint: .trailing, endPoint: .leading)
                    VStack(alignment: .leading){
                        HStack{
                            Text("10%")
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .fontWeight(.heavy)
                            Text("off")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        HStack{
                            Text("with")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                            Text("KBZ")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Text("debit card")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                        }
                        Image("UPI_Image")
                            .resizable()
                            .frame(width: 93,height: 62)
                            .padding(.top,17)
                    }.padding(EdgeInsets(top: 16, leading: 18, bottom: 0, trailing: 0))
            }
        
       
    }
}
struct BunnerItemView_Previews: PreviewProvider {
    static var previews: some View {
        BunnerItemView()
    }
}
