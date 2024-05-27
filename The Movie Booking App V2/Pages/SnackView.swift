//
//  SnackView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct SnackView: View {
    let column = [
        GridItem(.fixed(220)),
        GridItem(.flexible())
    ]
    
   
    var body: some View {
        ZStack{
            //background
            Color.black
            
            VStack(spacing:0.0){
                //appVarview
                SnackAppBarView()
                
                //SnacksBar
                SnackVarView()
                    .padding(.top,40)
                //AllSnackView
                ZStack{
                    ScrollView(.vertical){
                        LazyVGrid(columns: column){
                            ForEach(0..<10,id: \.self) { Int in
                                AllSnackView()
                            }
                            
                        }
                    }.padding(.top,30)
                    VStack{
                        Spacer()
                        ZStack{
                            Rectangle()
                                .frame(height: 120)
                            ZStack{
                                Rectangle()
                                    .frame(width: 370,height: 50)
                                    .foregroundColor(Color(C_COLOR))
                                    .cornerRadius(10)
                                HStack(spacing:0.0){
                                    Image("group4")
                                        .resizable()
                                        .frame(width: 27,height: 25)
                                    Image(systemName: "chevron.down")
                                        .resizable()
                                        .frame(width: 12,height: 8)
                                        .fontWeight(.bold)
                                        .padding(.leading,13)
                                    Rectangle()
                                        .frame(width: 197,height: 50)
                                        .foregroundColor(Color(C_COLOR))
                                    
                                    Text("2000ks")
                                        .fontWeight(.heavy)
                                        .font(.system(size: 16))
                                    Image(systemName: "chevron.right")
                                        .resizable()
                                        .frame(width: 10,height: 15)
                                        .fontWeight(.bold)
                                        .padding(.leading,13)
                                    
                                
                                }
                                
                                
                            }
                            
                        }

                    }
                                        
                }
                
            }.padding(.top,68)
        }.edgesIgnoringSafeArea([.bottom,.top])
    }
}

struct SnackView_Previews: PreviewProvider {
    static var previews: some View {
        SnackView()
    }
}

struct SnackAppBarView: View {
    var body: some View {
        HStack{
            Image(systemName: IC_CHEVRON_LEFT)
                .resizable()
                .foregroundColor(.white)
                .frame(width: 13,height: 22)
                .fontWeight(.bold)
            Text("Grab a Bite!")
                .foregroundColor(.white)
                .font(.system(size: 22))
                .fontWeight(.heavy)
                .padding(.leading,51)
            Spacer()
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 22,height: 22)
                .fontWeight(.bold)
            Text("SKIP")
                .foregroundColor(.white)
                .font(.system(size: 22))
                .fontWeight(.heavy)
                .padding(.leading,37)
        }.padding([.leading,.trailing],22)
    }
}

struct SnackVarView: View {
    @State var snacks : [SnackVO] = dummySnack
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            ScrollViewReader{ ScrollView  in
                HStack(spacing: 25){
                    ForEach(snacks,id: \.snackName) { snack in
                        VStack{
                            Text(snack.snackName)
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                            Rectangle()
                                .fill(snack.isSelected ? Color(C_COLOR) : .clear)
                                .frame(height: 4)
                        }.onTapGesture {
                            snacks = snacks
                                .map{ iteratedSnack in
                                    if iteratedSnack.snackName == snack.snackName{
                                        return SnackVO(snackName: iteratedSnack.snackName,isSelected: true)
                                    }else{
                                        return  SnackVO(snackName: iteratedSnack.snackName ,isSelected: false)
                                    }
                                }
                            withAnimation{
                                ScrollView.scrollTo(snack.snackName,anchor: .center)
                            }
                        }
                    }
                    
                }.padding([.leading,.trailing],25)
            }
            
        }
    }
}

struct AllSnackView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 170,height: 220)
                .foregroundColor(Color("background"))
                .cornerRadius(8)
            
            VStack(alignment: .leading,spacing: 0.0){
                Image("Snack")
                    .resizable()
                    .frame(width: 104,height: 104)
                    .padding(.leading,30)
                
                
                Text("Potatoe Chips")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top,20)
                Text("1000ks")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                    .foregroundColor(Color(C_COLOR))
                    .padding(.top,5)
                
                
                
                Button(action: {
                    
                }, label: {
                    Text("ADD")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(width: 150,height: 27)
                        .background(Color(C_COLOR))
                        .cornerRadius(4)
                        .padding(.top,10)
                    
                })
            }
            
            
        }
    }
}
