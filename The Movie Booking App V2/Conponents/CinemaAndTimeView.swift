//
//  CinemaAndTimeView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/21/23.
//

import SwiftUI

//cinemaAndTimeView
struct CinemaAndTimeView: View {
    @State var isTimeSlotShowing : Bool = false
    var isSeparatorShown : Bool = true
    
    var body: some View {
        VStack(alignment: .leading,spacing: 0.0){
            //NameAndSeeDetailView
            NameAndSeeDetailView()
            //CinemaFacilitiesView
            CinemaFacilitiesView()
            
            //cinemaAndtimeSlotView
            
            //timeSlotAndHints
            if isTimeSlotShowing{
                //time slots
                TimeSlotGridView()
                    .padding(.top,20)
                //longPressHint
                LongPressHintView()
                    .padding(.top,25)
            }else{
                EmptyView()
            }
            //separator
            if isSeparatorShown {
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.gray)
                    .padding(.top,30)
            }else{
                EmptyView()
            }
           
            
        }
        .padding(EdgeInsets(top: 15, leading: 24, bottom: 15, trailing: 24))
        .onTapGesture {
            withAnimation {
                isTimeSlotShowing.toggle()
            }
        }
        
        
    }
}



struct CinemaAndTimeView_Previews: PreviewProvider {
    static var previews: some View {
        CinemaAndTimeView()
    }
}

struct NameAndSeeDetailView: View {
    var body: some View {
        HStack{
            Text("JCGV : Junction City")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 16))
            Spacer()
            Text("See Detail")
                .foregroundColor(Color(C_COLOR))
                .fontWeight(.bold)
                .font(.system(size: 16))
                .underline()
            
        }.padding(.top,30)
    }
}

struct CinemaFacilitiesView: View {
    var body: some View {
        HStack(spacing: 16){
            FacilitiesView(lable: "Parking",image:"p.circle")
            FacilitiesView(lable: "OnlineFood",image:"food_list")
            
            FacilitiesView(lable: "WheelChair",image:"wheel_chair")
        }.padding(.top,21)
    }
}

struct DividerView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.gray)
            .frame(height: 1)
            .padding(.top,30)
    }
}
