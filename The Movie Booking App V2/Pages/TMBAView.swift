//
//  TMBAView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct TMBAView: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                VStack(alignment: .leading,spacing: 0.0){
                    //APP BAR VIEW
                    Appbarvie()
                    //DateView
                    DetailListView()
                        .padding(.top,30)
                    //TypeItem
                    ViewingTypeView()
                        .padding(.top,30)
                    //TimeSlotColorView
                    TimeSlotView()
                        .padding(.top,30)
                    //cinema and timeslot
                    ScrollView(.vertical){
                        ForEach(1...10,id: \.self) { number in
                            CinemaAndTimeView(isSeparatorShown: number != 10)
                        }
                    }
                    
                }
                .padding(.top,70)
            }.edgesIgnoringSafeArea([.top,.bottom])
        }
      
    }
}

struct TMBAView_Previews: PreviewProvider {
    static var previews: some View {
        TMBAView()
    }
}
//APP BAR VIEW
struct Appbarvie: View {
    var body: some View {
        HStack(spacing:25){
            Image(systemName: IC_CHEVRON_LEFT)
                .resizable()
                .foregroundColor(.white)
                .frame(width: 13,height: 22)
                .fontWeight(.bold)
            Spacer()
            RegionAndLocationView()
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 22,height: 22)
                .fontWeight(.bold)
            Image( "ic_filter")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 22,height: 22)
                .fontWeight(.bold)
            
        }.padding([.trailing,.leading],23)
    }
}

//DateView

struct DetailListView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: 4){
                ForEach(1..<7) { Int in
                    DateItemView()
                }
            }
        }
    }
}

//TypeItem

struct ViewingTypeView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing:23){
                ViewingTypeItemView(viewType: "2D")
                ViewingTypeItemView(viewType: "3D")
                ViewingTypeItemView(viewType: "3D IMAX")
                ViewingTypeItemView(viewType: "3D DBOX")
            }.padding([.leading,.trailing],22)
            
        }
    }
}

//timeSlotViw
struct TimeSlotView: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("timeslot_background"))
                .frame(width: 414,height: 37)
            HStack{
                Spacer()
                TimeSlotColorView(color: C_COLOR,text: "Availiable")
                Spacer()
                TimeSlotColorView(color: "orange",text: "Filling fast")
                Spacer()
                TimeSlotColorView(color: "pink",text: "Almost full")
                Spacer()
            }
        }
    }
}
//TimeSlotItemView
struct TimeSlotItemView: View {
    var body: some View {
        VStack{
            Text("12:30 PM")
                .foregroundColor(.white)
                .font(.system(size: 14))
            Text("3D IMAX")
                .foregroundColor(.white)
                .font(.system(size: 12))
            Text("Screen 1")
                .foregroundColor(.white)
                .font(.system(size: 12))
        }.padding(EdgeInsets(top: 7, leading: 16, bottom: 7, trailing: 16))
            .frame(height: 92)
            .overlay(RoundedRectangle(cornerRadius: 4)
                .stroke(Color("time_slot_color"),lineWidth: 1)
            )
    }
}

//TimeSlotGridView
struct TimeSlotGridView: View {
    var column = [
        GridItem(.flexible(minimum:98),spacing: 28),
        GridItem(.flexible(minimum:98),spacing: 28),
        GridItem(.flexible(minimum:98),spacing: 28)
    ]
    var body: some View {
        LazyVGrid(columns: column, spacing: 20){
            ForEach(0..<6,id: \.self) { number in
                NavigationLink(value: number){
                    TimeSlotItemView()
                }.buttonStyle(.plain)
                
            }
            
        }
    }
}

struct LongPressHintView: View {
    var body: some View {
        HStack{
            Image( "long_press_info")
                .resizable()
                .frame(width: 16,height: 16)
            Text("Long press on show timing to see seat class!")
                .foregroundColor(Color("time_slot_color"))
                .font(.system(size: 14))
        }
    }
}
