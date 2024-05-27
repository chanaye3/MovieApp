//
//  MovieDetailview.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/17/23.
//

import SwiftUI
import AVKit

let STORY_LINE = "There was once a velveteen rabbit, and in the beginning he was really splendid. He was fat and bunchy, as a rabbit should be; his coat was spotted brown and white, he had real thread whiskers, and his ears were lined with pink sateen. On Christmas morning, when he sat wedged in the top of the Boy’s stocking, with a sprig of holly between his paws, the effect was charming.Christmas morning, when he sat wedged in the top of the Boy’s stocking, with a sprig of holly between his paws, the effect was charming."

struct MovieDetailview: View {
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .center, vertical: .bottom)){
            //background
            Color.black
            ScrollView{
                VStack(alignment:.leading,spacing:0.0){
                    //MovieItemView
                    MovieDetailItemView()
                    
                    //CensorReleaseOrDetailView
                    
                    CensorOrReleaseView()
                    
                    //StorylineAndCast
                    StoryLineAndCastView()
                    
                    //Booking
                    
                    Spacer()
                }
            }
            
            //backbuttomandshare
            
            BackBtnAndShareView(){
                dismiss()
            }
           
                ZStack{
                    
                    Rectangle()
                        
                        
                        .frame(width:240,height: 50 )
                        
                    .foregroundColor(Color(C_COLOR))
                    .cornerRadius(8)
                    HStack(spacing: 0.0){
                        Circle()
                            .trim(from: 0,to: 0.5)
                            .frame(width: 20)
                            .rotationEffect(.degrees(-90))
                            
                        Spacer()
                        Circle()
                            .trim(from: 0,to: 0.5)
                            .frame(width: 20)
                            .rotationEffect(.degrees(90))
                    }.frame(width:260)
                    
                    Text("Booking")
                        .font(.system(size: 16))
                        .fontWeight(.heavy)
                }.padding(.bottom,66)
            
          
            
        }.edgesIgnoringSafeArea([.top,.bottom])
            .navigationBarHidden(true)
    }
}

struct MovieDetailview_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailview()
    }
}





struct ProfileAndTitleDetailView: View {
    let genre = ["Action","Adventure","Drama","Animation"]
    var body: some View {
        VStack{
            Spacer()
            HStack(alignment: .bottom){
                //profileView
                Image("ic_movie")
                    .resizable()
                    .frame(width: 140,height: 175)
                    .padding(.leading,17)
                
                //text
                TitleAndGenreView()
                
            }
        }
    }
}






struct StoryLineAndCastView: View {
    var body: some View {
        VStack(spacing:0.0){
            
            //StoryLine
            StoryLineView()
            
            
            //Cast
            CastView()
           
            
            
            
            
        }.padding(EdgeInsets(top: 38, leading: 17, bottom: 0, trailing: 17))
    }
}





