//
//  CastView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI


struct CastView : View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Cast")
                .font(.system(size: 14))
                .foregroundColor(.white)
                .fontWeight(.heavy)
                .padding(.top,30)
            
            ScrollView(.horizontal){
                
                HStack(spacing : 12){
                    ForEach(1..<10) { Int in
                        ZStack{
                            Image("cast_image")
                            
                                .resizable()
                                .frame(width: 60,height: 60)
                            
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(30)
                            
                                .padding(.top,22)
                            //                        Gradient
                            LinearGradient(colors: [.clear,.black], startPoint: .top, endPoint: .bottom)
                            
                            
                        }
                        
                        
                    }
                    

                }
                
            }
        }
    }
}

struct CastView_Previews: PreviewProvider {
    static var previews: some View {
        CastView()
    }
}
