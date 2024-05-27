//
//  LocalCodeView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 8/13/23.
import SwiftUI

struct Country: Identifiable {
    let id = UUID()
    let name: String
    let contactCode: String
}

struct LocalCodeView: View {
    @State private var showContactCodeList = false
    @State private var selectedCountryIndex: Int? = nil
    @State private var phoneNumber = ""
    
    let countries = [
        Country(name: "United States", contactCode: "+1"),
        Country(name: "United Kingdom", contactCode: "+44"),
        Country(name: "Australia", contactCode: "+61"),
        // Add more countries here...
    ]
    
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                Text(selectedCountryIndex != nil ? countries[selectedCountryIndex!].contactCode : "+00")
                
                Image(systemName: showContactCodeList ? "chevron.up" : "chevron.down")
                    .resizable()
                    .foregroundColor(.gray)
                    .fontWeight(.bold)
                    .frame(width: MARGIN_CARD_MEDIUM_2,height: MARGIN_MEDIUM)
                    .padding(.leading,MARGIN_XLARGE)
                    
            }
            
            .onTapGesture {
                withAnimation {
                    showContactCodeList.toggle()
                }
            }
            
            if showContactCodeList {
                ForEach(countries.indices, id: \.self) { index in
                    HStack {
                        Text(countries[index].name)
                        Spacer()
                        Text(countries[index].contactCode)
                    }
//                    .padding(.vertical, 4)
                    .onTapGesture {
                        selectedCountryIndex = index
                        showContactCodeList = false
                    }
                }
            }
            
//            Rectangle()
//                .frame(height: 2) // Height of the underline
//                .foregroundColor(Color(.gray))
//                .padding(.top)
//                .frame(width: 40) // Width of the underline
            
            Rectangle() // Displayed when tapped
                .frame(height: 2)
                .foregroundColor(Color(.gray))
                .padding(.top, MARGIN_MEDIUM)
                .frame(width: 76)
                .onTapGesture {
                    withAnimation {
                        selectedCountryIndex = selectedCountryIndex == nil ? 0 : nil
                    }
                }
        }
    }
}

struct LocalCodeView_Previews: PreviewProvider {
    static var previews: some View {
        LocalCodeView()
    }
}





