//
//  BackBtnAndShareView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct BackBtnAndShareView: View {
    var onTabBack : ()->Void = {}
    
    var body: some View {
        VStack {
            HStack(alignment:.top){
                
                Image(systemName: IC_CHEVRON_LEFT)
                
                    .foregroundColor(.white)
                    .frame(width: MARGIN_CARD_MEDIUM_2+1,height: 25)
                    .fontWeight(.heavy)
                    .onTapGesture {
                        onTabBack()
                        
                    }
                    
                
                
                
                Spacer()
                Image("share")
                    .resizable()
                    .frame(width: 24,height: 25)
                
                    .foregroundColor(.white)
                    
                    .fontWeight(.bold)
                     
            }.padding(EdgeInsets(top: MARGIN_RECTANGLE, leading: MARGIN_MEDIUM_3+2, bottom: 0, trailing: MARGIN_MEDIUM_3+2))
            Spacer()
        }
    }
}

struct BackBtnAndShareView_Previews: PreviewProvider {
    static var previews: some View {
        BackBtnAndShareView()
    }
}
