//
//  TimeSlotColorView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/21/23.
//

import SwiftUI

struct TimeSlotColorView: View {
    var color : String = ""
    var text : String = ""
    var body: some View {
        HStack{
            Circle()
                .frame(width: 8,height: 8)
                .foregroundColor(Color(color))
            Text(text)
                .foregroundColor(Color(color))
                .fontWeight(.medium)
        }
        
    }
}

struct TimeSlotColorView_Previews: PreviewProvider {
    static var previews: some View {
        TimeSlotColorView()
    }
}
