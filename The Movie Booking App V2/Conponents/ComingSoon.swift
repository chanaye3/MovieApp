//
//  ComingSoon.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/16/23.
//



import SwiftUI

struct ComingSoon: View {
    
    let column = [
        GridItem(.fixed(180)),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: column){
                ForEach(0..<10,id: \.self) { Int in
                    MovieItems2View()
                    
                }
            }
        }.padding(.horizontal)
    }
}

struct ComingSoon_Previews: PreviewProvider {
    static var previews: some View {
        ComingSoon()
    }
}

struct MovieItems2View: View {
    var isNowShowing : Bool = true
    var body: some View {
        
        ZStack (alignment: Alignment(horizontal: .trailing, vertical: .top)){
            VStack{
                //Image
                Image("ic_movie")
                    .resizable()
                    .frame(width: 171,height: 212)
                //Text
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
                //text
                HStack{
                    Text("U/A")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Circle()
                        .frame(width: 5,height: 5)
                        .foregroundColor(.white)
                    
                    Text("2D,3D,3D IMAX")
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                    Spacer()
                    
                }
                .padding([.leading,.trailing],7)
            }.frame(width: 171,height: 279)
            if isNowShowing{
                VStack{
                    Text("10th\nAUG")
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                        .fontWeight(.heavy)
                        .frame(width: 33,height: 30)
                        .background(Color(C_COLOR))
                        .cornerRadius(8)
                        .padding([.top,.trailing])
                }
            }else{
                EmptyView()
            }
        }
        
    }
}

