//
//  MovieDetailForComingSoonView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct MovieDetailForComingSoonView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        ZStack{
            //backGround
            Color.black
            ScrollView{
                //MovieItemview
                MovieDetailItemView()
                
                //censor Or Release view
                CensorOrReleaseView()
                
                //setNotificatdion
                SetNotificationView()
                
                //storyline
                StoryLineView()
                    .padding([.leading,.trailing],17)
                
                //castView
                CastView()
                    .padding([.leading,.trailing],17)
                
            }
            
            
            
            //backBtnAndShareview
            BackBtnAndShareView(){
                dismiss()
            }
            
        }.edgesIgnoringSafeArea([.top,.bottom])
            .navigationBarHidden(true)
    }
}

struct MovieDetailForComingSoonView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailForComingSoonView()
    }
}

struct SetNotificationView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
            Rectangle()
                .frame(width: 370,height: 154)
                .foregroundColor(Color("noti_color"))
                .cornerRadius(10)
                .padding(.top,30)
            HStack{
                //SetNoti
                VStack(alignment: .leading,spacing: 0.0){
                    Text("Relasing in 5 days")
                        .font(.system(size: 16))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.top,18)
                    Text("Get notify as soon as movie\nbooking open up in your city")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                        .padding(.top,10)
                    ZStack{
                        Rectangle()
                            .frame(width: 150,height: 35)
                            .foregroundColor(Color(C_COLOR))
                            .cornerRadius(8)
                        HStack{
                            Image(systemName: "bell.fill")
                                .frame(width: 18,height: 18)
                            Text("Set Notification")
                                .fontWeight(.medium)
                                .font(.system(size: 14))
                            
                        }
                    }.padding(.top,20)
                    
                }
                //image
                Image("noti_image")
                    .resizable()
                    .frame(width: 110,height: 128)
                    .padding(EdgeInsets(top: 32, leading: 30, bottom: 13, trailing: 8))
            }.padding(.leading,12)
            
        }
    }
}
