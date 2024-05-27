//
//  LocationScreen.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/10/23.
//

import SwiftUI

struct LocationScreen: View {
    
    var body: some View {
        NavigationStack {
            ZStack{
                //background
                Color(.black)
                
    //            ScrollView{
                    VStack(spacing: 0.0){
                        //TITLE
                        Text(LABLE_PICK_REGION)
                            .font(.system(size: TEXT_REGULAR_2X))
                            .foregroundColor(Color(C_COLOR))
                            .fontWeight(.bold)
                        
                        //SearchAndLocation
                        SearchAndLocationView(locationName: "")
                        
                        //Image
                        imageView()
                        
                        //title
                        cityTitleView()
                        
                        //RegionView
                        RegionView()
                        
                            
                    }
                .padding(EdgeInsets(top: MARGIN_RECTANGLE-5, leading: 0, bottom: 0, trailing: 0))
            }.edgesIgnoringSafeArea([.top,.bottom])
                .navigationBarHidden(true)
        }
    }
}

struct LocationScreen_Previews: PreviewProvider {
    static var previews: some View {
        LocationScreen()
    }
}

struct SearchAndLocationView: View {
    @State var locationName : String = ""
    init(locationName: String) {
        self.locationName = locationName
    }
    var body: some View {
        HStack (spacing:MARGIN_MEDIUM_3){
            //Search
            ZStack(alignment: .leading){
                //background
                Rectangle()
                    .foregroundColor(Color(.gray))
                    .opacity(25)
                    .frame(width: MARGIN_RECTANGLE_WIDTH,height: MARGIN_XXLARGE+2)
                    .cornerRadius(MARGIN_MEDIUM)
                
                //image and field
                HStack{
                    //image
                    Image(systemName: IC_MAGNIFYINGGLASS)
                        .resizable()
                        .frame(width: MARGIN_MEDIUM_2+2,height: MARGIN_MEDIUM_2+2)
                        .foregroundColor(Color(C_COLOR))
                        .padding(.leading,MARGIN_MEDIUM_2)
                    //textField
                    TextField(LABLE_SEARCH_YOUR_LOCATION, text: $locationName)
                        .font(.system(size: TEXT_REGULAR))
                        .frame(width: MARGIN_LOGO_HEIGHT,height: MARGIN_MEDIUM_2+1)
                        .textFieldStyle(.plain)
                        .foregroundColor(.white)
                }
            }
            //LOCATION
            ZStack{
                //BACKGROUND
                Rectangle()
                    .foregroundColor(Color(C_COLOR))
                    .frame(width: MARGIN_XXLARGE+2,height: MARGIN_XXLARGE+2)
                    .cornerRadius(MARGIN_CARD_MEDIUM_2-1)
                //IMAGE
                Image(systemName: IC_LOCATION_FILL)
                    .resizable()
                    .frame(width: MARGIN_MEDIUM_2,height: MARGIN_MEDIUM_2)
            }
        }.padding(.top,MARGIN_XLARGE)
    }
}

struct imageView: View {
    var body: some View {
        HStack{
            //spacer
            Spacer()
            Image( IC_VECTOR)
                .resizable()
                .frame(width: MARGIN_PRIVACY-5,height: MARGIN_XXLARGE+3)
                .foregroundColor(.gray)
                .background(Color(.white))
                .padding(.top,MARGIN_XLARGE-2)
            
        }
    }
}

struct cityTitleView: View {
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .foregroundColor(Color(TCP_COLOR))
                .frame(width: UIScreen.main.bounds.width, height: MARGIN_XLARGE+8)
            Text(LABLE_CITIES)
                .foregroundColor(.white)
                .font(.system(size: TEXT_REGULAR+1))
                .padding(.leading,MARGIN_MEDIUM_3+2)
        }
    }
}

struct RegionView: View {
    let cities = ["Yangon","Bago","Mandalay","Naypyidaw","Mawlamyine"]
    var body: some View {
        ScrollView{
           
            ForEach(cities,id: \.self, content: { data in
                
                VStack(spacing:0.0) {
                    NavigationLink(destination:{
                        MovieHomePageView()
                    }){
                        ZStack(alignment: .leading){
                            //background
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width, height: MARGIN_OTP)
                                
                            VStack(alignment: .leading,spacing: 0.0){
                                Text("\(data)")
                                    .foregroundColor(Color(.white))
                                    .font(.system(size: TEXT_REGULAR+1))
                                    .padding(.leading,MARGIN_MEDIUM_3+2)
                                
                                
                            }
                            
                        }
                    }.foregroundColor(.black)

                        
                    
                   
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color(.gray))
                }
            })
        }
    }
}
