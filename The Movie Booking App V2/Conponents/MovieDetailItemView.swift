//
//  MovieDetailItemView.swift
//  The Movie Booking App V2
//
//  Created by Mg Chan on 5/20/23.
//

import SwiftUI

struct MovieDetailItemView: View {
//    @Environment(\.dismiss) var dismiss
    var body: some View {
        
            
       
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)){
                    
                    //video
                    VideoView()
                    
                    //ProfileAndTitleDetailview
                    
                    ProfileAndTitleDetailView()
                    
                    
                        }
            
            .frame(height: 440)
            
        
    }
}

struct MovieDetailItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailItemView()
    }
}
