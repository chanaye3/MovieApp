//
//  MovieHomePage.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/12/23.
//

import SwiftUI

struct MovieHomePageView: View {
    @Environment (\.dismiss) var back
//    @State private var isNowShowing : Bool = false
//    @State private var showMovieDetail = false // New state to control MovieDetail views





    var body: some View {

        NavigationStack {
            TabView{
                Group{
                    ZStack{
                        //background
                        Color(.black)
                        VStack(spacing: 0.0){
                            //AppaBarView
                            AppBarView(){
                                back()
                            }



                                //bunnerSectionView
                                BunnerSectionView()
                                .padding(.top)

                                //nowShowingOrComingSoonView
                                VStack{
                                    NowShowingOrComingSoonView()

                                    ScrollView(.vertical){
                                       
                                            NavigationLink(destination: MovieDetailview()) {
                                                NowShowingView()
                                            }
                                        
                                            NavigationLink(destination: MovieDetailForComingSoonView()) {
                                                ComingSoon()
                                                
                                        }
                                    }
                                }

                                .padding(.top,28)


                            Spacer()
                        }.padding(EdgeInsets(top: 72, leading: 22, bottom: 0, trailing: 22))
//                            .onTapGesture {
//                                isNowShowing.toggle()
//                            }


                    }.ignoresSafeArea()

                        .navigationBarHidden(true)
                        .tabItem({
                            VStack{
                                Image(systemName: IC_PLAY_SQUARE_FILL)
                                Text(LABLE_MOVIES)

                            }

                        })
                    Text("")
                        .tabItem({
                            VStack{
                                Image(systemName: IC_TV_FILL)
                                Text(LABLE_CINEMA)
                            }

                        })
                    Text("")
                        .tabItem({
                            VStack{
                                Image(systemName: IC_TICKET_FILL)

                                Text(TICKET)
                            }

                        })
                    Text("")
                        .tabItem({
                            VStack{
                                Image(systemName: IC_PERSON_FILL)
                                Text(PROFILE)
                            }

                        })
                }
                .toolbarColorScheme(.light, for: .tabBar)
            }.accentColor(Color(C_COLOR))

        }.buttonStyle(.plain)

    }
}

struct MovieHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        MovieHomePageView()
    }
}

struct AppBarView: View {
    var onTapBack : () -> Void = {}
    var body: some View {
        HStack(spacing: 0.0){
            RegionAndLocationView()
                .onTapGesture {
                    onTapBack()
                }

            Spacer()
            Image(systemName: IC_MAGNIFYINGGLASS)
                .resizable()
                .foregroundColor(.white)
                .frame(width: 22,height: 22)
                .fontWeight(.bold)

            Image(systemName: IC_BELL_FILL)
                .resizable()
                .foregroundColor(.white)
                .frame(width: 18,height: 20)
                .padding(.leading,32)
            Image(systemName: IC_VIEWFINDER)
                .resizable()
                .foregroundColor(.white)
                .frame(width: 22,height: 22)
                .fontWeight(.medium)
                .padding(.leading,32)
        }
    }
}



struct BunnerSectionView: View {

    init(){
        UIPageControl.appearance().pageIndicatorTintColor = .gray
        UIPageControl.appearance().currentPageIndicatorTintColor = .yellow
    }

    var body: some View {
        TabView{
            ForEach(1...5,id: \.self){_ in
                BunnerItemView()
                    .padding(.bottom,48)
            }

        }.tabViewStyle(.page)
            .frame(height: 200)
    }
}

struct NowShowingOrComingSoonView: View {
    @State var btn : [BTNVO] = dummyBtn
    @State var isNowshowing : Bool = false
    @State var isComingSoon : Bool = false
    @State private var selectedButtonName: String? = nil
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 370,height: 55)
                .foregroundColor(Color("now_showing_color"))
                .cornerRadius(5)
            HStack{


                ForEach(btn ,id: \.btnName) { button in

                     Text(button.btnName)
                    .frame(width: 177,height: 40)

                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                    .background(button.isSelected ? Color(C_COLOR)  : .clear)
//                    .background(Color(C_COLOR))
                    .cornerRadius(4)
            .onTapGesture {
                selectedButtonName = button.btnName
                        btn = btn
                            .map { iteratedButton in
                            if iteratedButton.btnName == button.btnName {
                               
                                return BTNVO(btnName: iteratedButton.btnName, isSelected: true)
                                
                            } else {
                              
                                return BTNVO(btnName: iteratedButton.btnName, isSelected: false)
                                
                            }
                              
                        }
                    }

                }
            }
        }
    }
}


